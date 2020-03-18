Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7799189D07
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2020 14:31:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E654882E1;
	Wed, 18 Mar 2020 13:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xn1TWI4gRoVw; Wed, 18 Mar 2020 13:31:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F995882EB;
	Wed, 18 Mar 2020 13:31:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34A9A1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 13:31:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 307EC86EBA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 13:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8KfLlyvsfoGg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 13:31:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 57A7486D8A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 13:31:36 +0000 (UTC)
IronPort-SDR: Kzs6gIhrHk6V7881mGVbTtS1TZiajfv8EEiYi7IF53wmI512L2S7kHGFXY/NAVkKaoLLBWoLI1
 0B24toJ204OQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 06:31:33 -0700
IronPort-SDR: BZKSGEOMTBdwLG5O3sJB4kEkGhQRi3CnAsW6IsCtEPXRaIq70R99ETUeuZ+DxQAQw+H2KPicMn
 4TC3mk+euZ+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="233841828"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.209.111])
 ([10.214.209.111])
 by orsmga007.jf.intel.com with ESMTP; 18 Mar 2020 06:31:29 -0700
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
 <8c0032bd-15be-734b-1b52-dedba72a8da3@intel.com>
 <897C8B9E-839A-4FC1-9411-B3CB141890BC@canonical.com>
 <540fd2d3-9187-1dba-185a-58d94c4c5b69@intel.com>
 <BA29B851-8765-4F47-AC98-E2D604595EA6@canonical.com>
 <38766b04-eec3-f4ce-5fe5-6352562b271c@intel.com>
 <FFE42849-4E95-4ADC-9B46-7A0F5B58508B@canonical.com>
 <6c1bcb34-a713-a6ea-7def-8a0e553ea0bb@intel.com>
 <C9A08D85-D64B-44DD-8460-3405F2547D53@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <c94e12da-efb2-5e7f-b6a7-726f0378268b@intel.com>
Date: Wed, 18 Mar 2020 15:31:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <C9A08D85-D64B-44DD-8460-3405F2547D53@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [Regression] "e1000e: Add support for S0ix"
 breaks s2idle on Lenovo X1 Carbon 7th
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
Cc: "Shalev, Avi" <avi.shalev@intel.com>, Jason Yen <jason.yen@canonical.com>,
 Anthony Wong <anthony.wong@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/18/2020 14:21, Kai-Heng Feng wrote:
> Hi Sasha,
> 
>> On Mar 18, 2020, at 16:50, Neftin, Sasha <sasha.neftin@intel.com> wrote:
> 
> [snipped]
> 
>> ok, let's understand where is PHY location.
> 
> Lenovo confirmed the PHY is inside the laptop.
> 
>> Since no docking connected why driver should run?
> 
> Because the SoC in the laptop has an I219 device?
> 
>> There is no RJ45 port on laptop.
> 
> The Lenovo ethernet dongle wires the RJ45 to the I219 device.
> 
>> S0ix flow same (I got confirmation from our architecture team) and should haven't impact on Sx.
>> if PHY located externally... during S0ix flow we try access to the PHY and it can be problem. Since laptop have no RJ45 connector driver not expected to run I though.
> 
> But the I219 device is always on the PCI bus so e1000e should bind to it?
> 
ok. Need to debug this system. We will escalate this problem to our PAE.
> Kai-Heng
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
