Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1828AE7B2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 15:14:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B290A40534;
	Tue, 23 Apr 2024 13:14:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id faTQqVjJJAkP; Tue, 23 Apr 2024 13:14:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 080A940543
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713878079;
	bh=1qmA1p4TjETBn8tLveLCfp0nlOJRrmTf789dX65XA5s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4kErosylDXQXJ0gTGYdXGgoXMNdRX1kyzD4EwSVyaKEcB0kaCTs2FNAPjUkG1LHUV
	 XYS6q0Qcp77KkcwD37qPZaMJXRsfZ/RXUNtnWTu7x8oMvRGRnph5vn7kmPaSEIknGe
	 tWuoRBYNArvzundN5htjKZko/G68b2aaA6Qw2Yo6tmKSK/rWcpRuMgSY4NuJXj5WU1
	 tSVCiS9BDba4WXW4Xo8S0BwyryR8avMTK+XYGNr/DhGu/2LbvI5nisi1M7ljhQ8Mgb
	 tp88rdzdracrTft6tgBwSDoFoVID1UPrH6pjHYUgtpBDt4B9xzME9S1GZyN+bZ8uyH
	 CXZfR+t/GHk8A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 080A940543;
	Tue, 23 Apr 2024 13:14:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C88B1BF390
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 13:14:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9C4981340
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 13:14:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iv47hLDmoOWu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 13:14:35 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::435; helo=mail-wr1-x435.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0F6328132F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F6328132F
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F6328132F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 13:14:33 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id
 ffacd0b85a97d-34b66f0500aso815316f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 06:14:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713878071; x=1714482871;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1qmA1p4TjETBn8tLveLCfp0nlOJRrmTf789dX65XA5s=;
 b=Vcpb6FS4bFHQZ4RF/UUb2MBjISXplAjCe3KSpYCuge29TgxaIOf4MOn/RzwgvQn2v2
 rCLOXN+E0lsZfERIkv5LnMlSMX19+WfGpRJlJBB3I09XkEFzfQ4+ivdrzwfiQKUG6dfN
 a5MU0mEv+Ol6cOxKZjSUUKaGIKuE7EUBGebN8BLgXzycuhNbZ9vBI+rH2do9H7duXmlI
 xztFd0fV3pCEzq492kxfAhG/5wlU0LmgQjIc+kEbf0riF1jS0CI9xGSJ2Ew65iqc4Z+N
 Zii1xgclj9BiB+aK5o+rVD5tnZ0HUBR/VJTG+nXLu1+pmDdfiI77V56nS8c+C5GhZFr0
 igQQ==
X-Gm-Message-State: AOJu0Yy6lLCqrMKqG1UgGHDwG8CXIT2WqfNSbt10BVE/a6ubaDlwkc1o
 TQpvxx4LL0+exOnrvNbVfaEqdo6FIwMIRU8aBFWW0JbC5Q/u0l/zAeujU6I4pcQ=
X-Google-Smtp-Source: AGHT+IF4EPhB2yNAv8Dziy7d08f7B27xtumOJg9LPFpGkkeJRxZJJHQpmvHCWYjnxx424wL8nobBIA==
X-Received: by 2002:a05:6000:c8e:b0:34a:2da1:c556 with SMTP id
 dp14-20020a0560000c8e00b0034a2da1c556mr8585129wrb.37.1713878070900; 
 Tue, 23 Apr 2024 06:14:30 -0700 (PDT)
Received: from localhost (78-80-105-131.customers.tmcz.cz. [78.80.105.131])
 by smtp.gmail.com with ESMTPSA id
 b16-20020a5d40d0000000b00346406a5c80sm14619450wrq.32.2024.04.23.06.14.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Apr 2024 06:14:30 -0700 (PDT)
Date: Tue, 23 Apr 2024 15:14:28 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
Message-ID: <Zie0NIztebf5Qq1J@nanopsycho>
References: <20240423091459.72216-1-sergey.temerkhanov@intel.com>
 <ZiedKc5wE2-3LlaM@nanopsycho>
 <MW3PR11MB468117FD76AC6D15970A6E1080112@MW3PR11MB4681.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW3PR11MB468117FD76AC6D15970A6E1080112@MW3PR11MB4681.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713878071; x=1714482871;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1qmA1p4TjETBn8tLveLCfp0nlOJRrmTf789dX65XA5s=;
 b=Vwj4fAKmFwiMCwskbmQxZHHv1BLi95fOZ1ODFbpDcBdQjhL0/Oi1sgdrjbXwdjCvFN
 lUqdLuCHNx+f3a3u3WJo4I+fvDO+3tZZ1p+zi4DQTSoKNafFFd9fvtBq9S3/SDnD08S/
 Yb3AJKzT/Udkgw0wdgSK6n37CLeZbtYmUiHP5MhxM/MKr3NMwREIdIgr6CrLA1BfSA7K
 l9VVJRNDiD5O0cZhnJ/07nDOIIeEzb/dONeXKuyI7AqUT5YiBjg7eWOWPSOyawKRYGRb
 sLVwEafhtkcuervWDPiDzh9b3XO4PVekTM9O1FVWntRPrzNOkpvn9/DxDS8RbI7uecOc
 rsmw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Vwj4fAKm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Extend auxbus device
 naming
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Apr 23, 2024 at 01:56:55PM CEST, sergey.temerkhanov@intel.com wrote:
>
>
>> -----Original Message-----
>> From: Jiri Pirko <jiri@resnulli.us>
>> Sent: Tuesday, April 23, 2024 1:36 PM
>> To: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>
>> Subject: Re: [PATCH iwl-next v2] ice: Extend auxbus device naming
>> 
>> Tue, Apr 23, 2024 at 11:14:59AM CEST, sergey.temerkhanov@intel.com
>> wrote:
>> >Include segment/domain number in the device name to distinguish
>> between
>> >PCI devices located on different root complexes in multi-segment
>> >configurations. Naming is changed from ptp_<bus>_<slot>_clk<clock>  to
>> >ptp_<domain>_<bus>_<slot>_clk<clock>
>> 
>> I don't understand why you need to encode pci properties of a parent device
>> into the auxiliary bus name. Could you please explain the motivation? Why
>> you need a bus instance per PF?
>> 
>> The rest of the auxbus registrators don't do this. Could you please align? Just
>> have one bus for ice driver and that's it.
>
>This patch adds support for multi-segment PCIe configurations.
>An auxdev is created for each adapter, which has a clock, in the system. There can be

You are trying to change auxiliary bus name.


>more than one adapter present, so there exists a possibility of device naming conflict.
>To avoid it, auxdevs are named according to the PCI geographical addresses of the adapters.

Why? It's the auxdev, the name should not contain anything related to
PCI, no reason for it. I asked for motivation, you didn't provide any.

Again, could you please avoid creating auxiliary bus per-PF and just
have one auxiliary but per-ice-driver?


>
>Some systems may have adapters connected to different RCs which represent separate
>PCI segments/domains. In such cases, BDF numbers  for these adapters can match, triggering
>the naming conflict again. To avoid that, auxdev names are further extended to include the
>segment/domain number.
>  
>> 
>> 
>> >
>> >v1->v2
>> >Rebase on top of the latest changes
>> >
>> >Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>> >Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> >---
>> > drivers/net/ethernet/intel/ice/ice_ptp.c | 18 ++++++++++++------
>> > 1 file changed, 12 insertions(+), 6 deletions(-)
>> >
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
>> >b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> >index 402436b72322..744b102f7636 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
>> >+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> >@@ -2993,8 +2993,9 @@ ice_ptp_auxbus_create_id_table(struct ice_pf
>> *pf,
>> >const char *name)  static int ice_ptp_register_auxbus_driver(struct
>> >ice_pf *pf)  {
>> > 	struct auxiliary_driver *aux_driver;
>> >+	struct pci_dev *pdev = pf->pdev;
>> > 	struct ice_ptp *ptp;
>> >-	char busdev[8] = {};
>> >+	char busdev[16] = {};
>> > 	struct device *dev;
>> > 	char *name;
>> > 	int err;
>> >@@ -3005,8 +3006,10 @@ static int ice_ptp_register_auxbus_driver(struct
>> ice_pf *pf)
>> > 	INIT_LIST_HEAD(&ptp->ports_owner.ports);
>> > 	mutex_init(&ptp->ports_owner.lock);
>> > 	if (ice_is_e810(&pf->hw))
>> >-		sprintf(busdev, "%u_%u_", pf->pdev->bus->number,
>> >-			PCI_SLOT(pf->pdev->devfn));
>> >+		snprintf(busdev, sizeof(busdev), "%u_%u_%u_",
>> >+			 pci_domain_nr(pdev->bus),
>> >+			 pdev->bus->number,
>> >+			 PCI_SLOT(pdev->devfn));
>> > 	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_%sclk%u", busdev,
>> > 			      ice_get_ptp_src_clock_index(&pf->hw));
>> > 	if (!name)
>> >@@ -3210,8 +3213,9 @@ static void ice_ptp_release_auxbus_device(struct
>> >device *dev)  static int ice_ptp_create_auxbus_device(struct ice_pf
>> >*pf)  {
>> > 	struct auxiliary_device *aux_dev;
>> >+	struct pci_dev *pdev = pf->pdev;
>> > 	struct ice_ptp *ptp;
>> >-	char busdev[8] = {};
>> >+	char busdev[16] = {};
>> > 	struct device *dev;
>> > 	char *name;
>> > 	int err;
>> >@@ -3224,8 +3228,10 @@ static int ice_ptp_create_auxbus_device(struct
>> ice_pf *pf)
>> > 	aux_dev = &ptp->port.aux_dev;
>> >
>> > 	if (ice_is_e810(&pf->hw))
>> >-		sprintf(busdev, "%u_%u_", pf->pdev->bus->number,
>> >-			PCI_SLOT(pf->pdev->devfn));
>> >+		snprintf(busdev, sizeof(busdev), "%u_%u_%u_",
>> >+			 pci_domain_nr(pdev->bus),
>> >+			 pdev->bus->number,
>> >+			 PCI_SLOT(pdev->devfn));
>> >
>> > 	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_%sclk%u", busdev,
>> > 			      ice_get_ptp_src_clock_index(&pf->hw));
>> >--
>> >2.35.3
>> >
>> >
