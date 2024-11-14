Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C069C9321
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 21:20:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A61EF60702;
	Thu, 14 Nov 2024 20:20:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rj3xOlQT4vuo; Thu, 14 Nov 2024 20:20:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A245606ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731615609;
	bh=3VvBX0xwkTCxYA1lFX3czPTaYUSHU1LEh4u7qn52MWg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yRDtpDlSstFhW16UuZ1Gcr0OOogxjLpU5wzdm0sGOzx8tE9HfJ40KNETKSNqLoHMx
	 PYxhnfkG69M+jnWURClJ9U2Y8x+NLR7tH+aGdYGZmGLyOIuRoUWI9wNV5VFZW5897Z
	 uJyxsYkCQY+AZ+KuJdPiNMsWY4+LJHB/s96f4OjbCGo8pqFfZmPIP1p2rJ9nP7j5U+
	 6YV/mcAJqoC6Os1BEPa4iVfiosb9eUFzL8VLHcs2G7T/TYrLm0UGrjD4QKW1Ld3o3Y
	 tpM4iO+/+K9dX9PcH6u6rToeZvgW3BRXaFWcwM7uLhrunU0XFfwwSmvlVI7v1W1UGQ
	 nnJXdufQuvoYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A245606ED;
	Thu, 14 Nov 2024 20:20:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C0F1ABF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:20:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFBC2606ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:20:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6g5FkuvyHKNr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 20:20:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::730; helo=mail-qk1-x730.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E4CC2606F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4CC2606F4
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4CC2606F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:20:06 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id
 af79cd13be357-7b13ff3141aso67303385a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:20:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731615606; x=1732220406;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=3VvBX0xwkTCxYA1lFX3czPTaYUSHU1LEh4u7qn52MWg=;
 b=QWpKQWCChv8qUpoMJq7Tz7OtUIcPsRhU565ru/P5nu9JunDyZupvdnx3sWexrniZ+1
 2L0bM1wXDMUy+ExU6qxlG8c7skkeXd/CuV9VOnXb8aPXTf8sAMShd5hvQtbL6+yubAfr
 44CXJvAa5LwwoST944rdHgu3zNf5FnuK/7KUdCSlvI38lI7WhIei08GdA6KW2LZLFblg
 cCppxGymofrL97pvf81eMUMbPjxzgUxeN4ESEKSFmvsLREEDvEItqisNK/oP+h96Kv+Y
 DB1TP3J81xbisBunYNgvxZCpMYNEiyaWAre3m55jGtT5WdBhgudd/1a2qp9OJbw7B4/P
 +cOA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVK4Aga00M1O9A/oMEqCmTMmLv0bvKk9B7Xb2o3eXIGtGj3RMRw/oZR3FxkkVRUiNshpQNe5F0fXt7qrq1Kz2M=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzCpyrjfR/xPKoMFNvwgTLMSWkxbzextvfbyHn1VSJRmIDqXMMy
 D0HFM+wdb3vrhNn46Vwk7W+zlRVIwMgDSBgV8ijXLFI0uvJl5mZK
X-Google-Smtp-Source: AGHT+IFoipE09abFSRpmxlpOxmPSWdXjDtYOiwngTuPiUFNdFlV5/0ZO70BbdNlawjqD5gO9m6jpPQ==
X-Received: by 2002:a05:620a:4614:b0:7b1:457f:c88d with SMTP id
 af79cd13be357-7b362320e8fmr30951585a.49.1731615604759; 
 Thu, 14 Nov 2024 12:20:04 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7b35c9ad9a6sm86457485a.69.2024.11.14.12.20.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 12:20:03 -0800 (PST)
Date: Thu, 14 Nov 2024 15:20:03 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <67365b739f70c_3379ce29452@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241113154616.2493297-5-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-5-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731615605; x=1732220405; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3VvBX0xwkTCxYA1lFX3czPTaYUSHU1LEh4u7qn52MWg=;
 b=f9dwaXoByrS2h9ij5h+DUFhKTvvHbr/OyiPQ8eQuKJ3VYO3k+a/u9TwIh4klHcKnGC
 mMWGBg3zeThJtYWx26gEaQBZJqYI/y/iXYkbQJP/1osRlic06SiTc6PVUTzW4gB0tS00
 f+phWkfqu1SnnoVB84K1+S1HNHxPv1+Z9Wg94NeRMLu8mfXeTujZL/qTV8rF3vGMl/Km
 CI0U5uAIIn1E1OjitXd1cAeSZiByeybl0bBWpbwddEJIlYrzqMnRbP5IBMxTcAZzz6f4
 YtqLazwnNm+2I32u1YFA2G3JYp+wikONXQsdCFZRehBJPcByRp6eImH1BOeDCxP+J+bj
 4Oyw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=f9dwaXoB
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 04/10] idpf: negotiate PTP
 capabilies and get PTP clock
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

Milena Olech wrote:
> PTP capabilities are negotiated using virtchnl command. Add get
> capabilities function, direct access to read the PTP clock time and
> direct access to read the cross timestamp - system time and PTP clock
> time. Set initial PTP capabilities exposed to the stack.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Tested-by: Willem de Bruijn <willemb@google.com>

>  /**
>   * struct idpf_ptp - PTP parameters
>   * @info: structure defining PTP hardware capabilities
>   * @clock: pointer to registered PTP clock device
>   * @adapter: back pointer to the adapter
> + * @cmd: HW specific command masks
> + * @dev_clk_regs: the set of registers to access the device clock
> + * @caps: PTP capabilities negotiated with the Control Plane
> + * @get_dev_clk_time_access: access type for getting the device clock time
> + * @get_cross_tstamp_access: access type for the cross timestamping
>   */
>  struct idpf_ptp {
>  	struct ptp_clock_info info;
>  	struct ptp_clock *clock;
>  	struct idpf_adapter *adapter;
> +	struct idpf_ptp_cmd cmd;
> +	struct idpf_ptp_dev_clk_regs dev_clk_regs;
> +	u32 caps;
> +	enum idpf_ptp_access get_dev_clk_time_access:16;
> +	enum idpf_ptp_access get_cross_tstamp_access:16;

why are these 16 bit fields, when they are only ternary options?
