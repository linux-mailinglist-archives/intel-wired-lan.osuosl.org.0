Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C46F84DF98
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 12:27:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A98EB8516F;
	Thu,  8 Feb 2024 11:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YVs0ztU3_oxC; Thu,  8 Feb 2024 11:27:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55C3E85175
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707391622;
	bh=ENe6a0MGhFAYwxbIJ6WLGpev+wUMn3WNP3NeinQqkpk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7g/vOtjCVXzyv3yb8gKsC/mvoT+fByLya3IF9SSSs+E9COnxvi9pS3VWAldvV0BDd
	 aieul0gZma/EDzw+Jh/ew5F53mWJo4FQg1ptZdUVgVsJ982Qd1/g2mr1orQYgCTkPP
	 FG5Al0RGOhtxpK5iVoaSiu2XSHCLp5vJr/bR0SeAQBxcgqGM5DNQHEK/tWuRxtO5mX
	 yx9OB1Xj0oHM0JNuhjPRbvmGCY3oB40zqAm9hU/qQB6ml7al3Gj8tuEhEvjBO6ab4c
	 IwWsqWsMFj4C7hV8M1PcxGRIjejP6Mz8SZlAhQN/cypMbH3fVY4nRYPNvCm9v5AV/y
	 PMzZcStsQp21Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55C3E85175;
	Thu,  8 Feb 2024 11:27:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E4481BF267
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 11:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0925961683
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 11:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hsD8XzWXNdNy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 11:26:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5A967615EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A967615EB
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A967615EB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 11:26:55 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-41001c6e19aso4512495e9.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Feb 2024 03:26:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707391613; x=1707996413;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ENe6a0MGhFAYwxbIJ6WLGpev+wUMn3WNP3NeinQqkpk=;
 b=Wlzi+ncqa4hELRMlbyIUX69lOq/epptNjFrDaqkCHHBRn6e+n6q1hHas84o6xZoy2I
 Bvec/DnkmM3STvCXTwAhKMYEozIXvvVTCgk2eWNLMlFEor33TSAUpDgu3TCawTQWfdi/
 Zsy7OJ5pTI8aPz5s3IaQT2bWbCBHTphr9IT1UlDk81xtsGnxXgnzWvXK6ua4FtSuoXiZ
 breXDNmL53GeK0yUIcznOqkSgbxyapiJImsWYnQrQnA8gvBt+/UL2Rhi63zI7ZOF+wU9
 LIIu1YvIO5iMZpXLlFdA0xdcxzOiffSu/TvpoMOwawv98tJlyJ5zbZ+V9U5NcvpItpsv
 AG7Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUIVYc3hBzguw9b4/xnSurV4qFFUsFJcHoD1+8dj8UU1mw7ZAXG9Oyn6HtP0JhCi9NvkRUMcOrfhTXNNVUUmSQmSnnqFPEtn2iFbrDpdlEkjw==
X-Gm-Message-State: AOJu0YzPgMVw0ZUx0NvMMwXafJ9KR56cLyVwZRSdDvx4N1PBmBzIvGpm
 FFayfAuvDxO5b55IRPuqxMWhKi8TujozmB+6lc1k62MvyVJt5f90CGJAU+uRqt4=
X-Google-Smtp-Source: AGHT+IFynlbwaELVo7GaJVr7oESUnpHbKAXacrmgWYI4W/2zafauLyOMJtviUIiHO9Q94lIKXOCKWg==
X-Received: by 2002:a05:600c:4f85:b0:40f:cb0d:4de6 with SMTP id
 n5-20020a05600c4f8500b0040fcb0d4de6mr1845639wmq.5.1707391613110; 
 Thu, 08 Feb 2024 03:26:53 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCVW2Sm7rwhnabfFI7IcIwsENsKhtSUWvyRauqFuYAvoIjG/4y7F+DfxNyxTxHGb0FC7lUWC4P8zebZuakFqVkSGmy2Yf/jd/UpReDdaGbvflchYAAZqAUuYSnAIDb2VJU2exvpPCNWGfX2rGUvgE8rBkOfGX+SRTzea9Mg2OFLwmhDGjQuMhoQNRQLKfwM5JwuqEKHczoxOdTo0cYNaOJo07RAeuo4yVky/5el9GY65WyIYI4jHfigrA5/+qnQUEicm1joLlowjxL8S4j3o3hiLwa315369rc07YXFhdQFksLjg9ME1WwIXXleVHWjXFGIyWpCSxam41nkLM1WNFia6/bmOSvC6hy5GTymBQ9kxL2tcgGXyM/tF/lZZRyXWFnBNJCa1g8dxOg87xmjUo5suYF9sEHQGpBQqXhMOWXaptvauVU8xFzdYoNUqQ88m+UIewxzPCoN7PC/+QzPPI2VT89k3Yrnz/Jioj/mE9Ef8IHWVyf2w0BAlWd9auzfvdA16rHTJ/dAQFDm5SKTOtSo=
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 fb12-20020a05600c520c00b004103bd6f21dsm1181908wmb.35.2024.02.08.03.26.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Feb 2024 03:26:52 -0800 (PST)
Date: Thu, 8 Feb 2024 12:26:51 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Karthik Sundaravel <ksundara@redhat.com>
Message-ID: <ZcS6e1Z4w76Z2F_K@nanopsycho>
References: <20240208082455.66726-1-ksundara@redhat.com>
 <20240208082455.66726-2-ksundara@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240208082455.66726-2-ksundara@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707391613; x=1707996413;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ENe6a0MGhFAYwxbIJ6WLGpev+wUMn3WNP3NeinQqkpk=;
 b=Oj+M3jgq6SdqFDkRkuEaBI0SYw370dwjCxYxdh64m/i7XHfTXKK3ylSg7yzWGIOqI+
 7YsTZIHYXvmp/jo9f+0p4YshkuwX9VPOqXjS8hhfxEkm+wWq8WmmHYAlLpVFlZmCigwX
 qYDKLfRM9aNYB2n+q8WW9s28RSkYD2wUoJgIpDmRDOTEJOMKgmNupJ+fxB4dUh4LgyYK
 7HT/F7gcx6UAOxykmPQwqnOGgdhPJ40XFQzrD6GcRsdx9u6Qb6haUvfiPcS5vRhwwzox
 G1sajGFhH9YjTYmbOc/OxDU8wXJ98qNCOWj2Edq+RzUnxcsPz9bcb/nvkssZoLgEA8Zy
 7elA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Oj+M3jgq
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Add get/set hw address for
 VFs using devlink commands
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
Cc: pmenzel@molgen.mpg.de, aharivel@redhat.com,
 michal.swiatkowski@linux.intel.com, cfontain@redhat.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 vchundur@redhat.com, netdev@vger.kernel.org, kuba@kernel.org,
 rjarry@redhat.com, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Feb 08, 2024 at 09:24:55AM CET, ksundara@redhat.com wrote:
>Changing the MAC address of the VF ports are not available
>via devlink. Add the function handlers to set and get
>the HW address for the VF ports.

"VFs". Avoid the word "port" here, as it may falsely indicate you are
talking about the eswitch representor port.


>
>Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
>---
> drivers/net/ethernet/intel/ice/ice_devlink.c | 89 +++++++++++++++++++-
> 1 file changed, 88 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>index 80dc5445b50d..8455fa94a687 100644
>--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>@@ -1576,6 +1576,92 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
> 	devlink_port_unregister(&pf->devlink_port);
> }
> 
>+/**
>+ * ice_devlink_port_get_vf_mac_address - .port_fn_hw_addr_get devlink handler
>+ * @port: devlink port structure
>+ * @hw_addr: MAC address of the port
>+ * @hw_addr_len: length of MAC address
>+ * @extack: extended netdev ack structure
>+ *
>+ * Callback for the devlink .port_fn_hw_addr_get operation
>+ * Return: zero on success or an error code on failure.
>+ */
>+
>+static int ice_devlink_port_get_vf_mac_address(struct devlink_port *port,
>+					       u8 *hw_addr, int *hw_addr_len,
>+					       struct netlink_ext_ack *extack)
>+{
>+	struct devlink *devlink = port->devlink;
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	struct device *dev = ice_pf_to_dev(pf);
>+	struct devlink_port_attrs *attrs = &port->attrs;
>+	struct devlink_port_pci_vf_attrs *pci_vf;
>+	int vf_id;
>+	struct ice_vf *vf;

Reverse xmas tree:
https://www.kernel.org/doc/html/v6.7/process/maintainer-netdev.html#tl-dr


>+
>+	if (attrs->flavour == DEVLINK_PORT_FLAVOUR_PCI_VF) {
>+		pci_vf = &attrs->pci_vf;
>+		vf_id = pci_vf->vf;
>+	} else {
>+		dev_err(dev, "Unable to get the vf id for PF %d\n", pf->hw.pf_id);

Fill the extack message instead.


>+		return -EADDRNOTAVAIL;
>+	}
>+	vf = ice_get_vf_by_id(pf, vf_id);
>+	if (!vf) {
>+		dev_err(dev, "Unable to get the vf for PF %d\n", pf->hw.pf_id);

Fill the extack message instead.


>+		return -EINVAL;
>+	}
>+	ether_addr_copy(hw_addr, vf->dev_lan_addr);
>+	*hw_addr_len = ETH_ALEN;
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_port_set_vf_mac_address - .port_fn_hw_addr_set devlink handler
>+ * @port: devlink port structure
>+ * @hw_addr: MAC address of the port
>+ * @hw_addr_len: length of MAC address
>+ * @extack: extended netdev ack structure
>+ *
>+ * Callback for the devlink .port_fn_hw_addr_set operation
>+ * Return: zero on success or an error code on failure.
>+ */
>+static int ice_devlink_port_set_vf_mac_address(struct devlink_port *port,
>+					       const u8 *hw_addr,
>+					       int hw_addr_len,
>+					       struct netlink_ext_ack *extack)
>+{
>+	struct devlink *devlink = port->devlink;
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	struct device *dev = ice_pf_to_dev(pf);
>+	struct net_device *netdev = port->type_eth.netdev;
>+	struct devlink_port_attrs *attrs = &port->attrs;
>+	struct devlink_port_pci_vf_attrs *pci_vf;
>+	int vf_id;
>+	u8 mac[ETH_ALEN];

Reverse xmas tree:
https://www.kernel.org/doc/html/v6.7/process/maintainer-netdev.html#tl-dr


>+
>+	if (attrs->flavour == DEVLINK_PORT_FLAVOUR_PCI_VF) {
>+		pci_vf = &attrs->pci_vf;
>+		vf_id = pci_vf->vf;
>+	} else {
>+		dev_err(dev, "Unable to get the vf id for PF %d\n", pf->hw.pf_id);

Fill the extack message instead.


>+		return -EADDRNOTAVAIL;
>+	}
>+
>+	if (!netdev) {
>+		dev_err(dev, "Unable to get the netdev for PF %d\n", pf->hw.pf_id);

Fill the extack message instead.


>+		return -EADDRNOTAVAIL;
>+	}
>+	ether_addr_copy(mac, hw_addr);
>+
>+	return ice_set_vf_mac(netdev, vf_id, mac);
>+}
>+
>+static const struct devlink_port_ops ice_devlink_vf_port_ops = {
>+	.port_fn_hw_addr_get = ice_devlink_port_get_vf_mac_address,
>+	.port_fn_hw_addr_set = ice_devlink_port_set_vf_mac_address,
>+};
>+
> /**
>  * ice_devlink_create_vf_port - Create a devlink port for this VF
>  * @vf: the VF to create a port for
>@@ -1611,7 +1697,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
> 	devlink_port_attrs_set(devlink_port, &attrs);
> 	devlink = priv_to_devlink(pf);
> 
>-	err = devlink_port_register(devlink, devlink_port, vsi->idx);
>+	err = devlink_port_register_with_ops(devlink, devlink_port,
>+					     vsi->idx, &ice_devlink_vf_port_ops);
> 	if (err) {
> 		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
> 			vf->vf_id, err);
>-- 
>2.39.3 (Apple Git-145)
>
