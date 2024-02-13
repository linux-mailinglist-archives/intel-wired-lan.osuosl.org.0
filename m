Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B3A852F60
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 12:32:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55EEF40C53;
	Tue, 13 Feb 2024 11:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aRWhmBdJicyQ; Tue, 13 Feb 2024 11:32:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E876040C20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707823928;
	bh=M0PO875PhhAYhDyIsyAO3fJrS0i6HoS78JQscxH3CNk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N7TBZ/GAEHiqggngtFM8vupZxNqdbVfIaoVrmqscIbdReyt2ATMg1j44kWl+c4enm
	 Oo0z6y89DCVk4Th7vHMe0NdukqSPP9xKBN7/22+8oSJA5W8hg8WMaTB9ZvJnhmjBXK
	 U0WR4fvPMHAoUTz7F5QLaZYvJcedWwHzM+qHmu3Ugky5EpMvQg8WAPMXOzYDEyYvZE
	 +UtuqAbUOO4A9+vq/G6TtNEkpANoESlGDlRrIa3AOtr91Xkp8is/1VRixFhCqvjFDo
	 BBcnqpYxIg4rKCm0/etb5EmDZtUrMIa21jb/Xogw5CjNy9NKCxxWXd1P8YtLfWT5KO
	 9AzM5afCb/K6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E876040C20;
	Tue, 13 Feb 2024 11:32:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2360F1BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F7FE60B31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z5Lymn3U0AKI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 11:32:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 17C9360A71
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17C9360A71
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17C9360A71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:32:04 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-40efcb37373so33762765e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 03:32:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707823923; x=1708428723;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=M0PO875PhhAYhDyIsyAO3fJrS0i6HoS78JQscxH3CNk=;
 b=Dh9NOuXQCsmFCi3XxPFA+T7gh8loF+qzomL8vfQJlRnAAiO9UyGHotGoEyU1lkGIfb
 yJkG2i2IW9F/szYKjOiKpscR+iw2VtKs2KqG2ifUD9Og2KrdHOlWS1zywkZZnx6B1C+h
 0I+biC7GR2qUon+Jw6RCDDT+v7ehNOjJW6xIZ9wtP0AhsawqlG+V/CQym3Ro8BmX82BS
 H5DZ7H2lUexeYeMRm1CYDcQPDe2GwcPwleoO4uKRk02TxFwqeLuyYi1a7EGUyQRDT+y0
 DkjihrqsyckvU51Kza63wNns8xSdHRYoQybfUZF+g9Qp76P65x6VoW7KxGylqSfrDwS/
 Al4w==
X-Gm-Message-State: AOJu0YzJM+JNCnVBgtONleWEe3QUZBEgJICDGQ2IgeUCxay56odh1TId
 HOaDILihoWm0CE6zpp59+NTBhczDS8GDYfxy7cwJzpYr+y1xUfaVGCL5XUM0vEc=
X-Google-Smtp-Source: AGHT+IEgc/x4ACnJN+qqpr/xpdcr6E2ce8z1u9xzeG5MSVVhW2G4Pczb+MAitkRAxkc9X1+RSLF3sQ==
X-Received: by 2002:a05:600c:4f91:b0:410:e43d:24e9 with SMTP id
 n17-20020a05600c4f9100b00410e43d24e9mr3770756wmq.22.1707823923018; 
 Tue, 13 Feb 2024 03:32:03 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXez/RU7XT8Jj/a1wuebiLAeKt5BOQsXEnaBxV8W4vI6DaCLbHsB+lJYtAZJQr67eAU5yJbj2nrcyaboRryla1nHEc8UaKzVD/grY5IU1k4sLH1uAurSArl4Hyrmfv0uTTBEub6249M0Lsxnazvg5bsB5WOHcAdV6cvci8qEMF4b0ijOY75CWBGlw5otF3KfheYN/wPmEQfsVH3gBWqChJclIMB0LBn5PhloPX8HoMPuP3Ej3YuPJomItc0xklzvFkguBcaOaX8pH5KVO2JkDZ/HE8AHJAbOFeyu97iwa8kmhxdEyg0EULAPI9uruvK+pAMg5uAvHu8nUDesv7TqteALSUfo60fxxUfkaGLK2K0jXQ6jEiZvqOvy0szbF+J2+39JkK3KkH8KERLZBV2VVTvS+kekZQY6aO95u4RbYk0B8Pl4pFu5zpYZgFZUMKYiioESNWd
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 c24-20020a05600c0ad800b004107dfa6aebsm11207098wmr.28.2024.02.13.03.32.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 03:32:02 -0800 (PST)
Date: Tue, 13 Feb 2024 12:31:59 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZctTL05gEf_7XbhX@nanopsycho>
References: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
 <20240213073509.77622-2-michal.swiatkowski@linux.intel.com>
 <ZcswSYA5GqtOb3ll@nanopsycho> <Zcs95HiZz5g4QUwt@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zcs95HiZz5g4QUwt@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707823923; x=1708428723;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=M0PO875PhhAYhDyIsyAO3fJrS0i6HoS78JQscxH3CNk=;
 b=TcwORCW6J2Fp5CCLHzwPW6JlGlSMMxtuRvjl8Z8gYMNjm8t6ugfivpAA024NRQQ65v
 l6D394egTjBpm8CVasoLy5m60Wp5RIEqXXWPrlq0dDhYAVQpTPe8Nex1MQPoURO8g8f3
 38ZmcYc5+cg1hegL6XWA0lczVRUTXNAYnPaxrWJ/Oi6fcN4Dwk7i5S35CWTeiGC6Y6lC
 ZnUz4WFqhSrieacODmMDe8pZtl8Qdmoucz034kj/cTEbTrSlVu5qu0SVkP3Vl4Kz4vCX
 PA8LBpxUQSECh5Y8o4JLKNP905Hy7p6KWIICPa08XZUrWmcj+3OSiGLeypT71D1dGfTw
 fpCg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=TcwORCW6
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/7] ice: devlink PF MSI-X max
 and min parameter
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 13, 2024 at 11:01:08AM CET, michal.swiatkowski@linux.intel.com wrote:
>On Tue, Feb 13, 2024 at 10:03:05AM +0100, Jiri Pirko wrote:
>> Tue, Feb 13, 2024 at 08:35:03AM CET, michal.swiatkowski@linux.intel.com wrote:
>> >Use generic devlink PF MSI-X parameter to allow user to change MSI-X
>> >range.
>> >
>> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> >---
>> > drivers/net/ethernet/intel/ice/ice.h         |  8 ++
>> > drivers/net/ethernet/intel/ice/ice_devlink.c | 82 ++++++++++++++++++++
>> > drivers/net/ethernet/intel/ice/ice_irq.c     |  6 ++
>> > 3 files changed, 96 insertions(+)
>> >
>> >diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>> >index c4127d5f2be3..24085f3c0966 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice.h
>> >+++ b/drivers/net/ethernet/intel/ice/ice.h
>> >@@ -94,6 +94,7 @@
>> > #define ICE_MIN_LAN_TXRX_MSIX	1
>> > #define ICE_MIN_LAN_OICR_MSIX	1
>> > #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
>> >+#define ICE_MAX_MSIX		256
>> > #define ICE_FDIR_MSIX		2
>> > #define ICE_RDMA_NUM_AEQ_MSIX	4
>> > #define ICE_MIN_RDMA_MSIX	2
>> >@@ -535,6 +536,12 @@ struct ice_agg_node {
>> > 	u8 valid;
>> > };
>> > 
>> >+struct ice_pf_msix {
>> >+	u16 cur;
>> >+	u16 min;
>> >+	u16 max;
>> >+};
>> >+
>> > struct ice_pf {
>> > 	struct pci_dev *pdev;
>> > 
>> >@@ -604,6 +611,7 @@ struct ice_pf {
>> > 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
>> > 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
>> > 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
>> >+	struct ice_pf_msix msix;
>> > 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
>> > 	u16 num_lan_tx;		/* num LAN Tx queues setup */
>> > 	u16 num_lan_rx;		/* num LAN Rx queues setup */
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> >index cc717175178b..b82ff9556a4b 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> >+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> >@@ -1603,6 +1603,78 @@ enum ice_param_id {
>> > 	ICE_DEVLINK_PARAM_ID_LOOPBACK,
>> > };
>> > 
>> >+static int
>> >+ice_devlink_msix_max_pf_get(struct devlink *devlink, u32 id,
>> >+			    struct devlink_param_gset_ctx *ctx)
>> >+{
>> >+	struct ice_pf *pf = devlink_priv(devlink);
>> >+
>> >+	ctx->val.vu16 = pf->msix.max;
>> >+
>> >+	return 0;
>> >+}
>> >+
>> >+static int
>> >+ice_devlink_msix_max_pf_set(struct devlink *devlink, u32 id,
>> >+			    struct devlink_param_gset_ctx *ctx)
>> >+{
>> >+	struct ice_pf *pf = devlink_priv(devlink);
>> >+	u16 max = ctx->val.vu16;
>> >+
>> >+	pf->msix.max = max;
>> 
>> What's permanent about this exactly?
>> 
>
>I want to store the value here after driver reinit. Isn't it enough to
>use this parameter type? Which one should be used for this purpose?

Documentation/networking/devlink/devlink-params.rst say:

.. list-table:: Possible configuration modes
   :widths: 5 90

   * - Name
     - Description
   * - ``runtime``
     - set while the driver is running, and takes effect immediately. No
       reset is required.
   * - ``driverinit``
     - applied while the driver initializes. Requires the user to restart
       the driver using the ``devlink`` reload command.
   * - ``permanent``
     - written to the device's non-volatile memory. A hard reset is required
       for it to take effect.


[...]
