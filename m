Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C81B3DCA4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Sep 2025 10:38:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27B6D414B8;
	Mon,  1 Sep 2025 08:38:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dcfn4FUKNjVY; Mon,  1 Sep 2025 08:38:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3E8B413FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756715882;
	bh=YieHs2EdzcXdNtbtuJLTZuoSL3hLDGAdJYs4wWPl/QM=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Llkd27vo1iUR7QYJ5R12oMpfUJKlHNKsPxTgCjGVh24g4kdYhe0Yk9X3C8xpY3dM7
	 l1mFP6icvMatBVNcDjeNdcUjoK2+Ffm4oVRlbB+YohHdzl91Mi12nWB72xoed4dn+Y
	 W6KIxndCG7BhN8rmabiQoShGzqnPSqmGN3pT9QsqINTiofE7UExKJl4W7nDCripJ81
	 vlR5Oj0cDUYK4/6rjYWmMEAp+hbCjf1OY9ZQ61M+VnPNbO2LWcTVPOHmVCOkTBME09
	 vqdu3BpzjauPkkDkg7SIX5rJNRuJpJ6M7h0uHxHFEST9rhLdmhUeUZh4Xelq4wo9ww
	 gHzOJer2Q9pcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3E8B413FD;
	Mon,  1 Sep 2025 08:38:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E7B9E186
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 08:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D92F64120B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 08:38:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1CCukn0MU2NG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 08:38:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.162.73.231;
 helo=pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=33257c5d5=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F0CEF41203
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0CEF41203
Received: from pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.162.73.231])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F0CEF41203
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 08:38:00 +0000 (UTC)
X-CSE-ConnectionGUID: Z3bwL3dbRW+HSmTeOi4sug==
X-CSE-MsgGUID: SUOQhIPAT2WHiC8V55SrWg==
X-IronPort-AV: E=Sophos;i="6.18,225,1751241600"; 
   d="scan'208";a="2036255"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2025 08:37:58 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.7.35:48252]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.12.13:2525]
 with esmtp (Farcaster)
 id d5a0e15f-fc4f-43a7-a7a3-4ea2fa567d3d; Mon, 1 Sep 2025 08:37:58 +0000 (UTC)
X-Farcaster-Flow-ID: d5a0e15f-fc4f-43a7-a7a3-4ea2fa567d3d
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Mon, 1 Sep 2025 08:37:56 +0000
Received: from b0be8375a521.amazon.com (10.37.244.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 1 Sep 2025 08:37:53 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <den@valinux.co.jp>, <edumazet@google.com>,
 <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <jedrzej.jagielski@intel.com>, <kohei.enju@gmail.com>, <kuba@kernel.org>,
 <mateusz.polchlopek@intel.com>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>, <przemyslaw.kitszel@intel.com>,
 <stefan.wegrzyn@intel.com>
Date: Mon, 1 Sep 2025 17:37:38 +0900
Message-ID: <20250901083745.69554-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <IA3PR11MB8986BB7E1C9B70B43014F1BDE507A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986BB7E1C9B70B43014F1BDE507A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [10.37.244.8]
X-ClientProxiedBy: EX19D031UWA003.ant.amazon.com (10.13.139.47) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756715881; x=1788251881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YieHs2EdzcXdNtbtuJLTZuoSL3hLDGAdJYs4wWPl/QM=;
 b=m6B+qrATcjkG0+OEczsFhdIO0Xg/ky+H2scCABYMGTEudkEjG1kTDlKQ
 bHMZFXrS1ZCn2YcBsYdwSNKK/vh86LJbHuEkSmnE02XCCa6vnc91PrGSL
 53eSne3WnDTyBmoXFKtmRz0N/EZ6QiuF1mk84/QJpjBVe2CzBrw3t08Ni
 KQ72Mi6GPCb9ES0ge4o3hcHJOm9enkZfaLdNd4OkBy3paJYafU/TwXjFW
 2ITXA0sSHcaZ5tmufMMLQV2E9jj3GiW6c8XVbLL0Dt8PUiHDZEB8U5Mcx
 bpaETt2K987e0hpCo6r9DQqaM73XhhfgnDN5HvOzZQ7yWG0VBQpbbnlbG
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=m6B+qrAT
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak and
 use-after-free in ixgbe_recovery_probe()
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

On Mon, 1 Sep 2025 07:11:26 +0000, Loktionov, Aleksandr wrote:=0D
=0D
>> [...]=0D
>> =0D
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=0D
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=0D
>> index ff6e8ebda5ba..08368e2717c2 100644=0D
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=0D
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=0D
>> @@ -11510,10 +11510,10 @@ static int ixgbe_recovery_probe(struct=0D
>> ixgbe_adapter *adapter)=0D
>>  shutdown_aci:=0D
>>  	mutex_destroy(&adapter->hw.aci.lock);=0D
>>  	ixgbe_release_hw_control(adapter);=0D
>> -	devlink_free(adapter->devlink);=0D
>>  clean_up_probe:=0D
>>  	disable_dev =3D !test_and_set_bit(__IXGBE_DISABLED, &adapter-=0D
>> >state);=0D
>>  	free_netdev(netdev);=0D
>I'd add a guard here: if (adapter->devlink)=0D
>What do you think?=0D
=0D
Thank you for the review.=0D
=0D
Currently ixgbe_recovery_probe() is only called from one location,=0D
ixgbe_probe(), and also always adapter->devlink is not NULL in this path=0D
since this is called after ixgbe_allocate_devlink(). In other words, if=0D
ixgbe_allocate_devlink() fails, ixgbe_recovery_probe() never be called.=0D
=0D
So I've thought that the guard might not be necessary like error=0D
handling in ixgbe_probe(), but could you let me know your concern if I'm=0D
overlooking something?=0D
=0D
Thanks,=0D
Kohei.=0D
=0D
>> +	devlink_free(adapter->devlink);=0D
>>  	pci_release_mem_regions(pdev);=0D
>>  	if (disable_dev)=0D
>>  		pci_disable_device(pdev);=0D
>> --=0D
>> 2.51.0=0D
