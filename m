Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD47C86C49D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Feb 2024 10:12:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F3B6417D0;
	Thu, 29 Feb 2024 09:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XlMd2649dux3; Thu, 29 Feb 2024 09:12:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D34A5417B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709197964;
	bh=TtoUY+sUx4i7491sOvpQ7a18yb0FYFKsvjRSHokqh7A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6962MKrjYK9wNQwPDsI/Wzfvku6pB1oXbB38R7K46Y63gSsVWaRslBt4XqXf0kfOB
	 2cDt8rG0AQIyQIBQtM9bQNllpMramwNuvApkWPvLZchq7zvI4s3RqqIUB8T/InuT+O
	 u/E/4EfhG2ESjiNdKiVswRUcTfe6B/wc7K/JpAckRW6pbkkEFMAFZHy6OpONr8Pv+V
	 Gt9ytAvB1J4QF3hVXEyfD8/aSM+I5ssVKMambVcUGJKpuP6a8SMuPt1NpgTI8dsFcV
	 Wec3f6RXybYb9j7og3m3sRRmn3EQ74EY8WDrk8jZVdV2Ln58DBgPJF9/RQgaXEIQGR
	 sFNlrGFs/307w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D34A5417B1;
	Thu, 29 Feb 2024 09:12:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DEE4B1BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 09:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C7C2D40BD1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 09:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HY2qYNzosVHv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Feb 2024 09:12:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62b; helo=mail-ej1-x62b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C301940531
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C301940531
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C301940531
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 09:12:37 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id
 a640c23a62f3a-a445587b796so21724566b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 01:12:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709197956; x=1709802756;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TtoUY+sUx4i7491sOvpQ7a18yb0FYFKsvjRSHokqh7A=;
 b=GjcVN7WoIfjwiR7vaAXlZ9cULngjtJeZMQwqRjoVsHgKoVwlejHerx1rSzlZXnHQEB
 de3HyTS4yqGDkxoado3RxZt6fa8EqzRh55s0ksIOyVqyYUe5z3J69Sd6ggS5NEOpCNL0
 qRel4GAWbKfXq9XAen8qku4DQW9u7NjEX5me5TJTcZn2koGfczdZ6pOVKXTCkFrRMwBk
 bJ3aRa6OOZPKbDCzznqj2aYDaf5JCTOnIOoCzqGOt6aDHVPQAxl+J4rrHrw84kuBijgN
 BqDlTAOu8NPwGYVNvYPeIHObQQyIOGWiTo/JiIkBvPlr2aqW75FmJTtfKvcdvZ01QCfO
 98BQ==
X-Gm-Message-State: AOJu0Yw/WCkWmKITAfb1MNZew41+1H1id8u167tyNwDyKfhlu4DFCtxN
 4cILMbeqjLpyOZmLgeUoJ5tDnYncUv3pstscrvkoZSyWRy6FEQRgc+In2P0UdCM=
X-Google-Smtp-Source: AGHT+IEWZelIZUYOUxf791XMFb0Cg0LC0EFoqAd1hBPXslI7aSFuvjl8VfWb+ocyRVNNkifawwnEfQ==
X-Received: by 2002:a17:906:f845:b0:a3f:d7ee:5fdc with SMTP id
 ks5-20020a170906f84500b00a3fd7ee5fdcmr940823ejb.46.1709197955800; 
 Thu, 29 Feb 2024 01:12:35 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 tz5-20020a170907c78500b00a3f9a10f792sm478027ejc.7.2024.02.29.01.12.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Feb 2024 01:12:35 -0800 (PST)
Date: Thu, 29 Feb 2024 10:12:34 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <ZeBKgpUurx90HDET@nanopsycho>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
 <20240228155957.408036-5-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228155957.408036-5-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709197956; x=1709802756;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=TtoUY+sUx4i7491sOvpQ7a18yb0FYFKsvjRSHokqh7A=;
 b=LGGBwvmpXYdv3l0Z2PijlFbzjYx67ciJS/cDPQ8U0NHxr7DRcW5SeWOn4lnKdm5Rxu
 CZHwHfiMHavenuMKvp4D9Ur76EQrbJ7jVj8/ESayEhilmqYbAFDssw2V2G++r5xc+8PA
 enQBcqQ6PMfJFDwRxwW37u83jTncfcDEMlziOE96WUXiHXoK6GMCiKNNeZHTAEC4nLo3
 rOAw2vRJfhE/uoe/enf7tnlI3JMNN/Sgx/nuMw61Kl11ZeUqaNwKl6bm898Bqp1KV7PO
 LbVKh0kxkfIErywDl+woEDeYvQ4999dri+0rPhKVF8YUaTsrzOsMqPbuBWV/YuU+hRBp
 Zctg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=LGGBwvmp
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/5] ice: Implement VF LLDP RX
 support on VF
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Feb 28, 2024 at 04:59:48PM CET, larysa.zaremba@intel.com wrote:

[...]


>diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>index 9c2c8637b4a7..af3611055e60 100644
>--- a/drivers/net/ethernet/intel/ice/ice_main.c
>+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>@@ -4704,9 +4704,60 @@ void ice_deinit_dev(struct ice_pf *pf)
> 	ice_clear_interrupt_scheme(pf);
> }
> 
>+static ssize_t rx_lldp_show(struct device *dev, struct device_attribute *attr,
>+			    char *buf)
>+{
>+	struct ice_pf *pf = dev_get_drvdata(dev);
>+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
>+
>+	return sysfs_emit(buf, "%u\n", vsi->rx_lldp_ena);
>+}
>+
>+static ssize_t rx_lldp_store(struct device *dev, struct device_attribute *attr,
>+			     const char *buf, size_t count)
>+{
>+	struct ice_pf *pf = dev_get_drvdata(dev);
>+	struct ice_vsi *vsi;
>+	bool ena;
>+	int err;
>+
>+	if (test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags)) {
>+		dev_err(dev, "Toggling Rx LLDP for PF is only allowed when FW LLDP Agent is disabled");
>+		return -EPERM;
>+	}
>+
>+	err = kstrtobool(buf, &ena);
>+	if (err)
>+		return -EINVAL;
>+
>+	vsi = ice_get_main_vsi(pf);
>+
>+	if (ena == vsi->rx_lldp_ena) {
>+		dev_dbg(dev, "Rx LLDP already %sabled", ena ? "en" : "dis");
>+		return count;
>+	}
>+
>+	ice_cfg_sw_lldp(vsi, false, ena);
>+
>+	return count;
>+}
>+
>+static DEVICE_ATTR_RW(rx_lldp);
>+
>+static int ice_init_rx_lldp_sysfs(struct ice_pf *pf)
>+{
>+	return device_create_file(ice_pf_to_dev(pf), &dev_attr_rx_lldp);

Don't add driver specific sysfs knobs please.

pw-bot: reject

[...]
