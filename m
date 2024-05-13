Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C97018C3F6E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 13:04:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 751C781F15;
	Mon, 13 May 2024 11:04:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rb0CfPmXx3nG; Mon, 13 May 2024 11:04:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C13981E98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715598276;
	bh=o0bm6vy9KiQiBlLAf59ubxl1yGSDCVBhjcvi/qZljDQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yEJXXRjY9fvyfXwE7DfmAFT/PW7Kcl2ZAtm4XsCsEq8hDEVIQDZxRDZDS12g/8936
	 O7m0CenSrA5LAQUM9yruMkWgpNK6aLs8ZXidgDbPq8g5pi7KEIY+XaJJclK1gtK6Th
	 FFYxx037DQ4c+LiApOL95k0x2q8fIDilTHhEu+7vTfeQvDlvnMehsenX9VkoF5zjfz
	 snLgFEyRMYPK6rrei1+PxMDxoApDlDFQoqYNHI0tXDT4NN7u2IVFl2KwW8J07D/EbP
	 YG0YMPv2Q2dcNRZpeeMYCcq64JrfGF8DbyDy/+137Po8zThjH8x6rCjOVDTkVMTr8x
	 4q9/Za+poajcg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C13981E98;
	Mon, 13 May 2024 11:04:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BEFD1BF479
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7779941479
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sTIQi2kmnnxt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 11:04:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32e; helo=mail-wm1-x32e.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CEB4B4011D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEB4B4011D
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEB4B4011D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:04:29 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-420104e5336so9546225e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 04:04:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715598268; x=1716203068;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o0bm6vy9KiQiBlLAf59ubxl1yGSDCVBhjcvi/qZljDQ=;
 b=DEIpgOHJZ/aahZv1jGgrfFyjO10UEN2/z7iVuJBtBO1MvzAlngYxsfdVZXrMs7xwxh
 eE5DxJoLRL3eo0ry02WSfzGIFkbhBQ9VEUQ67Env+o+On9jd3A6fLBTWghvfyI+K1tim
 8ZbJYdbkrqSEFs7xSi+6RD1CT6zzTmCP3RpmAmJHK+AizwEoJiDUnc8XVuoPNf4ApECK
 hkHfbqMhY56yU3ifqFWDggWHSMR28wSfVkXoSWalShtcQc3qW4VK9in+tQsMEF3r8Kq0
 kC2kSttZhE0VtwZW1lO1ObCj72Tmtz+DH1hHy00zo8MiuWxTl2Yhi0r1eYWEnfTXiq4q
 e9Ww==
X-Gm-Message-State: AOJu0Yy7Rab+gsJ3QtPODB1UJtSPiqCOEvjPdBGlC7x5riDC4ZORAICz
 J1liU88qw/LNCTPUwiet+k0WorZc6KvW1UArwO1vrAKZVFsG32KK1t+v1NFOBhA=
X-Google-Smtp-Source: AGHT+IGh+nnOrinrAFzjJIujBcWff2faYDloYS25IU6qR7fu8kaTwICIdLurnZDSTqfqVw3Y31/dJA==
X-Received: by 2002:a05:600c:4a98:b0:41b:9427:562e with SMTP id
 5b1f17b1804b1-41feaa427f0mr83228235e9.12.1715598267583; 
 Mon, 13 May 2024 04:04:27 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42014c21260sm41954465e9.3.2024.05.13.04.04.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 May 2024 04:04:27 -0700 (PDT)
Date: Mon, 13 May 2024 13:04:23 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZkHztwMeJFU73WQm@nanopsycho.orion>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-4-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240513083735.54791-4-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715598268; x=1716203068;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=o0bm6vy9KiQiBlLAf59ubxl1yGSDCVBhjcvi/qZljDQ=;
 b=PfdHfb+k6iVtRF1wvSRByfr5H7ztIK5uxRIdbWEgv6hM4hf4LWorBZYJ3q52CpL8/1
 yOOXsYFSE+5ytoVniuMdr6PYxDKlG73bes9uCCjpryl8WuYoGr8doCou9FF5iNitzdf2
 rnci04YSPa0x1YnP47YjT9jyb7JfQ4sMnLsfdGjsHGkjGYvrwmqHib1Mjs964nMYO9IH
 rm9K0rgf6JgG6KNrKLi7UP4zj+jjuJtLiJC6YekwaRJPmkm00+EfYjpu3jz+dP/TNY+p
 r4nypLAPqcWz6S5v9Dw8dT/vi+3kxkq6516n+U+Q6Ci3YaP3bbcXj9KlHpgE0T2w23aj
 p7XQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=PfdHfb+k
Subject: Re: [Intel-wired-lan] [iwl-next v2 03/15] ice: add basic devlink
 subfunctions support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, May 13, 2024 at 10:37:23AM CEST, michal.swiatkowski@linux.intel.com wrote:

[...]



>+int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port)
>+{
>+	struct devlink_port_attrs attrs = {};
>+	struct devlink_port *devlink_port;
>+	struct devlink *devlink;
>+	struct ice_vsi *vsi;
>+	struct device *dev;
>+	struct ice_pf *pf;
>+	int err;
>+
>+	vsi = dyn_port->vsi;
>+	pf = dyn_port->pf;
>+	dev = ice_pf_to_dev(pf);
>+
>+	devlink_port = &dyn_port->devlink_port;
>+
>+	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_SF;
>+	attrs.pci_sf.pf = pf->hw.bus.func;
>+	attrs.pci_sf.sf = dyn_port->sfnum;
>+
>+	devlink_port_attrs_set(devlink_port, &attrs);
>+	devlink = priv_to_devlink(pf);
>+
>+	err = devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
>+					  &ice_devlink_port_sf_ops);
>+	if (err) {
>+		dev_err(dev, "Failed to create devlink port for Subfunction %d",
>+			vsi->idx);

Either use extack or avoid this error message entirely. Could you please
double you don't write dmesg error messages in case you have extack
available in the rest of this patchset?


>+		return err;
>+	}
>+
>+	return 0;
>+}
>+

[...]
