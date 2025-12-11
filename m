Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC71CB644E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 16:04:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 825E340FDE;
	Thu, 11 Dec 2025 15:04:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l_-nxq0p7M8W; Thu, 11 Dec 2025 15:04:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C22D940FD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765465474;
	bh=cwCs81f0vNPkN78ID9FHsqJBuMhnxPNmOIYW60KiI4Q=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nY4S+os1KocthOGJbp1NW24v8PruoKGKC8lxl7BEXgMd+WcyGS64bPCg9XgWYxWee
	 065MTwqZxUwEfuMHSPX1LORW2WJM/+IiiuDSJH1+c1nwz73lU+5ly1zIyMtUhtSuQU
	 ywYPuXQ+sgxk/IgOPQxwfyHao+lQry4geAiHt7htCeTXCkBPqpk4Kc9FC7oa6j0Qnb
	 5MhwItIfXHajA4nQh/WTJf1gyzZlUOJLzL2Sdz7vYigg1QWYwP8amS+xhT9c5rZt//
	 MuS3bxxeSBQbPtKN6OcPzD2iZuasLWoFtb7pxfejMR89WM5RvGxGrrB+QzLC6LM0B5
	 JRJPVxJz64gCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C22D940FD8;
	Thu, 11 Dec 2025 15:04:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A765E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 15:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 707CD607AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 15:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0kX2grV_jpRb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 15:04:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.26.1.71;
 helo=pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=43358fca2=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 61BEE607A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61BEE607A8
Received: from pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.26.1.71])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61BEE607A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 15:04:31 +0000 (UTC)
X-CSE-ConnectionGUID: eIzLcVBQSLClYiulwhaZ2g==
X-CSE-MsgGUID: Z2L+z05sR1qArPePkkQpTw==
X-IronPort-AV: E=Sophos;i="6.21,141,1763424000"; 
   d="scan'208";a="8903553"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2025 15:04:28 +0000
Received: from EX19MTAUWB002.ant.amazon.com [205.251.233.111:21079]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.21.145:2525]
 with esmtp (Farcaster)
 id d8c1259c-a35c-4f31-99db-6ab443e229f5; Thu, 11 Dec 2025 15:04:28 +0000 (UTC)
X-Farcaster-Flow-ID: d8c1259c-a35c-4f31-99db-6ab443e229f5
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 15:04:28 +0000
Received: from b0be8375a521.amazon.com (10.37.244.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 15:04:24 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <horms@kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <jacob.e.keller@intel.com>, <jedrzej.jagielski@intel.com>, <kohei@enjuk.org>, 
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>, <stefan.wegrzyn@intel.com>
Date: Fri, 12 Dec 2025 00:03:10 +0900
Message-ID: <20251211150416.88637-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <IA3PR11MB8986CAD67FDC2D778567A046E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986CAD67FDC2D778567A046E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D039UWB002.ant.amazon.com (10.13.138.79) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1765465472; x=1797001472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cwCs81f0vNPkN78ID9FHsqJBuMhnxPNmOIYW60KiI4Q=;
 b=lfXFf+r7Vt83fHIIp5EAI4wX9GSoQn++/Fc5p/vbZ/lp6yA0swBdCDtg
 p8LcQ7haJwSLQnsBdEQnDPcyzcdgEZAFopqyEhdrcIvctfVA9C5weKlz9
 G0jEmaFAH5AwRv9c0G1DdqGYNm6DXL/iQ/zTgAB/BlvldneRPviMuX31J
 /tFJ3vE7LEw2j9pB+O+BxWVFXrHaaoMcDkqAk1+uJOMLp63yOsPF/thBY
 Bu77snL3wa2vWVAJGc/zagNVux4259oZzABfA5nUFquJXr0L89htX6D2V
 0AxBE0iiVdpiGsjHeDkLhdyc3N4cVrQjtaGa0KboQNIaazIc2z3+qdPli
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=lfXFf+r7
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ixgbe: fix memory
 leaks in the ixgbe_recovery_probe() path
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

On Thu, 11 Dec 2025 10:13:09 +0000, Loktionov, Aleksandr wrote:

>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> index 4af3b3e71ff1..85023bb4e5a5 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -11468,14 +11468,12 @@ static void ixgbe_set_fw_version(struct
>> ixgbe_adapter *adapter)
>>   */
>>  static int ixgbe_recovery_probe(struct ixgbe_adapter *adapter)  {
>> -	struct net_device *netdev = adapter->netdev;
>>  	struct pci_dev *pdev = adapter->pdev;
>>  	struct ixgbe_hw *hw = &adapter->hw;
>> -	bool disable_dev;
>>  	int err = -EIO;
>> 
>>  	if (hw->mac.type != ixgbe_mac_e610)
>> -		goto clean_up_probe;
>> +		return err;
>You've removed the clean_up_probe: label and its cleanup code (free_netdev, devlink_free, pci_release_mem_regions, pci_disable_device) without providing a proof that ixgbe_probe()'s error path correctly handles all these resources.
>I'm afraid this patch may trade one leak for another, or cause double-free issues.

Hi Alex, thank you for taking a look.

First, ixgbe_recovery_probe() is a static function and is only called
from ixgbe_probe(), so potential affected scope is limited to the
ixgbe_probe() function (at least for now). Also I don't think
ixgbe_recovery_probe() is a common util function which would be used in
other functions than ixgbe_probe().

Also I changed ixgbe_probe() to cleanup those resources when
ixgbe_recovery_probe() fails to keep consistency, just because those
resources are allocated by ixgbe_probe(), not by ixgbe_recovery_probe().

Considering the conversation I had in v1 patch [1], I think this change
would be acceptable, and rather preferable to reduce the possibility of
future regression.

[1] https://lore.kernel.org/all/b5787c94-2ad0-4519-9cdb-5e82acfebe05@intel.com/

>> @@ -11655,8 +11646,13 @@ static int ixgbe_probe(struct pci_dev *pdev,
>> const struct pci_device_id *ent)
>>  	if (err)
>>  		goto err_sw_init;
>> 
>> -	if (ixgbe_check_fw_error(adapter))
>> -		return ixgbe_recovery_probe(adapter);
>> +	if (ixgbe_check_fw_error(adapter)) {
>> +		err = ixgbe_recovery_probe(adapter);
>> +		if (err)
>> +			goto err_sw_init;
>The early return 0; on successful ixgbe_recovery_probe() bypasses the remainder of ixgbe_probe().
>The commit message doesn't explain what subsequent initialization steps (if any) are intentionally skipped in recovery mode, or whether this is correct behavior.

On successful path, ixgbe_probe() just returns ixgbe_recovery_probe()
and don't execute following codes, so there's no change of behavior.
