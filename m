Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C9EA2F369
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 17:26:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0E61811AE;
	Mon, 10 Feb 2025 16:26:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AggcVdk8pzAO; Mon, 10 Feb 2025 16:26:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0697B811EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739204777;
	bh=+X7ZGXGJrlpJ8WltnoHRQdxOU9YpHfT8O3Sz64MlsdI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LQ/KnX/YkDO1GSg91awMRrckyGPtdF0jYn8iaKtJfr//RDJaoM9VacRA3fsEX7mOo
	 HFJ576EPxfROAkP1k7Q455kaqLTRbw7WqjGHTHij0Mdy0GKe5axs4EALsdxva9ECIu
	 kd2QP11V0ulM2pkXiovmbEvQafO7VhYjDtHpkz+hZxdyw8TSCJus83spOLDqV5Sp4V
	 ssFstPvepe4Gp+V9y1MAFhBK7/IDCCGnexz+nwrmtDhBt9o+WmZk/V0guDdLVzr4pH
	 1KU9ZjvQOmccQi3hew0TOhtuzpN3LU/ABX8x+a43CO4Q+Xmw86aa0ByhWJ1YDM/NJ+
	 OnK7pd4/nbKuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0697B811EB;
	Mon, 10 Feb 2025 16:26:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 78D196C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 16:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B1D240132
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 16:26:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aT5CW-d90QUR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 16:26:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::333; helo=mail-wm1-x333.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6F20140580
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F20140580
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F20140580
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 16:26:11 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-4394829ef0fso5270315e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 08:26:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739204769; x=1739809569;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+X7ZGXGJrlpJ8WltnoHRQdxOU9YpHfT8O3Sz64MlsdI=;
 b=wKedEWDhWsFx65yAqVyDL0U9hA6OxyIJ3/m1+z9ZElnNDF8LHYHaLcPSilPcfWLL0N
 XOZqQqPZW3prRLveL8JVg6JLgv7pk0+oET68cT+68Wq+BwcAinVaiJwr1HwJ1Vv9dB4e
 l2onQmamKcGBf4DkvhIXyGQGKRZwdvwxrZ+AmeG4ASJGb2mvoao5NfxXkwIb3UoXTaJ/
 RQi6bfmSh0vwBhJY1TbgMA3Qlh+HKVTY9pR6ojFcFEAzA/DHUjYdTIM3zssMCxsEDlzv
 bQ/dLho304KWIJLSEcuvpEOBC+dHbpEKmzzjxxYx++u2YpntTJgM9YE11MlxUy66xDVP
 DykQ==
X-Gm-Message-State: AOJu0YzafvkTae31KZr1RbH8K0F3pe13XBj56qjg4k158OEqzN2nCdyf
 DGEJleuhHbQYH9+XTX2NhSg2vYL7rlXx/nYiihTYpkawklwc/EC/vZ/g19bi6x8=
X-Gm-Gg: ASbGncvw2qt0KJUVkR94CJJJMXzLkAf5Y0KgkZLIHxtOsiejZaEiUMMwQQY4vi+8huG
 NupiSwPbDmjNmNDbtATqs/auuYBNtFKEVX1BlW/5luHEfuTpuPUyqR5E28ZQ7QIT548koO+yRuB
 w46bcLqLiufzLxzr/K+OBe+zsM9eDjSZChAEcWTv7NRID6zMD4uX6jOXRHn9oP8c7zRj7vgy705
 B07VdE68YDfgU5oFbce4spZejm+orSI2D7vDVLGb4om3SSRM673YVEnIZzXIYAqvj5Z14L2IUUw
 8T936300a3HhjIZUSy/RxWM=
X-Google-Smtp-Source: AGHT+IHRDxNCbQj43cKRpu4vnQK3m/lk4rd2euiC+kdgvVEN30tlHtPWOFuoJ9lKVnMxytY4+hv9zA==
X-Received: by 2002:a05:600c:3c96:b0:436:1b86:f05 with SMTP id
 5b1f17b1804b1-439255b81e1mr106884955e9.11.1739204769357; 
 Mon, 10 Feb 2025 08:26:09 -0800 (PST)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38dbf2ed900sm12548261f8f.53.2025.02.10.08.26.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 08:26:08 -0800 (PST)
Date: Mon, 10 Feb 2025 17:26:03 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 netdev@vger.kernel.org, horms@kernel.org, 
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <bxi2icjzf37njzl4q5euu6bbrvbfu2c557dksqtigtegxcnowo@yyfke6ocrtpf>
References: <20250210135639.68674-1-jedrzej.jagielski@intel.com>
 <20250210135639.68674-3-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210135639.68674-3-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1739204769; x=1739809569;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+X7ZGXGJrlpJ8WltnoHRQdxOU9YpHfT8O3Sz64MlsdI=;
 b=ea+xQRWkCezn6Wl24VBkN0f81LQ4I2/Dk0hMGZcDFHtRmQX8yLKsSRE4D7I9MvFSqr
 QN3Zp2XVYE5D4QKSt9DsZ+xAox/eOQYPI//15+qo1plTs83Mp3KINtlkZ8J2gdlmnMqx
 drH85jaPRb2aYWJMfEAYcydahSkCvu9qZCjCdcAfmv+AO5L/cH+5WRyQrtel4wEVbqOX
 JJNTucA7Zv1BT0gerG5M0xTgTuwG8NKVSPE0PzdQAHLGP5jR+r6oOoFM4DElk21lUB0u
 9+xiaQT7gmZOE1e1of56kr00r1UkxiDO+EvIfdQtcE2j6vX5w5kDfdJJcQZYicw/n96A
 3JUA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ea+xQRWk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/13] ixgbe: add handler
 for devlink .info_get()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Feb 10, 2025 at 02:56:28PM +0100, jedrzej.jagielski@intel.com wrote:

[...]

>+enum ixgbe_devlink_version_type {
>+	IXGBE_DL_VERSION_FIXED,
>+	IXGBE_DL_VERSION_RUNNING,
>+};
>+
>+static int ixgbe_devlink_info_put(struct devlink_info_req *req,
>+				  enum ixgbe_devlink_version_type type,
>+				  const char *key, const char *value)

I may be missing something, but what's the benefit of having this helper
instead of calling directly devlink_info_version_*_put()?



>+{
>+	if (!*value)
>+		return 0;
>+
>+	switch (type) {
>+	case IXGBE_DL_VERSION_FIXED:
>+		return devlink_info_version_fixed_put(req, key, value);
>+	case IXGBE_DL_VERSION_RUNNING:
>+		return devlink_info_version_running_put(req, key, value);
>+	}
>+
>+	return 0;
>+}
>+

[...]


>+static int ixgbe_devlink_info_get(struct devlink *devlink,
>+				  struct devlink_info_req *req,
>+				  struct netlink_ext_ack *extack)
>+{
>+	struct ixgbe_devlink_priv *devlink_private = devlink_priv(devlink);
>+	struct ixgbe_adapter *adapter = devlink_private->adapter;
>+	struct ixgbe_hw *hw = &adapter->hw;
>+	struct ixgbe_info_ctx *ctx;
>+	int err;
>+
>+	ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
>+	if (!ctx)
>+		return -ENOMEM;
>+
>+	ixgbe_info_get_dsn(adapter, ctx);
>+	err = devlink_info_serial_number_put(req, ctx->buf);
>+	if (err)
>+		goto free_ctx;
>+
>+	ixgbe_info_nvm_ver(adapter, ctx);
>+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
>+				     DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
>+				     ctx->buf);
>+	if (err)
>+		goto free_ctx;
>+
>+	ixgbe_info_eetrack(adapter, ctx);
>+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
>+				     DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
>+				     ctx->buf);
>+	if (err)
>+		goto free_ctx;
>+
>+	err = ixgbe_read_pba_string_generic(hw, ctx->buf, sizeof(ctx->buf));
>+	if (err)
>+		goto free_ctx;
>+
>+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_FIXED,
>+				     DEVLINK_INFO_VERSION_GENERIC_BOARD_ID,
>+				     ctx->buf);
>+free_ctx:
>+	kfree(ctx);
>+	return err;
>+}
>+
> static const struct devlink_ops ixgbe_devlink_ops = {
>+	.info_get = ixgbe_devlink_info_get,
> };
> 
> /**
>-- 
>2.31.1
>
>
