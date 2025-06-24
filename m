Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E36AE6E90
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 20:26:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EC9361367;
	Tue, 24 Jun 2025 18:26:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tqv_0IFRBU1N; Tue, 24 Jun 2025 18:26:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F17361374
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750789577;
	bh=NciPXSYJhwcZ1bsK1ubxsblaN89sbnSvIgaoVIz9JbM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0284kszfbore0+4EGurN1lhIk3h0EPiz+DtPTa0WBf3aVNob6anij4xDRQWiy3NDN
	 kMjdkYOuk0XpnmYkH5lAIz+aFbQaFvXcthEbp9hoseXeoKES+yKGfTbkm2X7zhKLEQ
	 NSRTSEPRZp5e6ZIAhg1HjRcuKLtM1iHAe+kScPWpTBYV3MfgTonYwtnhnl9+v/lYlI
	 Mqh7n/kJ/fAD08tGuCwgJg6BezhLNwQIYcGyHKD3elTeJeMefYodJFwnwl8QrEuRRc
	 RczJJfx/SnOPAzVDq0UWpzYv0ZZFzOAGKzsfu6lrpwh0Ftu1AKRFRLb6ge5mvwO3T1
	 4qRxpXtbqOVow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F17361374;
	Tue, 24 Jun 2025 18:26:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C542312C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 18:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B745340B01
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 18:26:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GsKfphnym6no for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 18:26:15 +0000 (UTC)
X-Greylist: delayed 489 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 24 Jun 2025 18:26:14 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 09E4C40210
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09E4C40210
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.146;
 helo=fout-b3-smtp.messagingengine.com; envelope-from=vlad@ursu.me;
 receiver=<UNKNOWN> 
Received: from fout-b3-smtp.messagingengine.com
 (fout-b3-smtp.messagingengine.com [202.12.124.146])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 09E4C40210
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 18:26:14 +0000 (UTC)
Received: from phl-compute-07.internal (phl-compute-07.phl.internal
 [10.202.2.47])
 by mailfout.stl.internal (Postfix) with ESMTP id 422381D0017B;
 Tue, 24 Jun 2025 14:18:04 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-07.internal (MEProxy); Tue, 24 Jun 2025 14:18:04 -0400
X-ME-Sender: <xms:2-taaHIpGyB6qt6BgHQRh8OaQ3lGnNo9SAA-niqkOrcDq7WZ-6DF9g>
 <xme:2-taaLIt22tD7CyvpmUnXgPjUKPrXD4M9i-Zp1yWryj8zAo8KAFC5zJ5yl9hQ1TAK
 _UJ-_e9w7tW4sLRVa0>
X-ME-Received: <xmr:2-taaPu42EqyXkBp1J_EqED2zFA7OcjzO8AoB86IwtOHPuBaudE5KyZmQn0wA6Whsw-l>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgddvtdehlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpefkffggfgfuvfevfhfhjggtgfesthejredttddvjeenucfhrhhomhepgghlrgguucgf
 tffufgcuoehvlhgrugesuhhrshhurdhmvgeqnecuggftrfgrthhtvghrnhepkeefgeevje
 dvfefhffeigefffefguedugeeiledufedugfeuudeftdefiefgffegnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepvhhlrggusehurhhsuhdrmh
 gvpdhnsggprhgtphhtthhopeduuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohep
 jhgrtggvkhesjhgrtggvkhhkrdhinhhfohdprhgtphhtthhopegrnhhthhhonhihrdhlrd
 hnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehprhiivghmhihslhgrfidr
 khhithhsiigvlhesihhnthgvlhdrtghomhdprhgtphhtthhopegrnhgurhgvfidonhgvth
 guvghvsehluhhnnhdrtghhpdhrtghpthhtohepuggrvhgvmhesuggrvhgvmhhlohhfthdr
 nhgvthdprhgtphhtthhopegvughumhgriigvthesghhoohhglhgvrdgtohhmpdhrtghpth
 htohepkhhusggrsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehprggsvghnihesrhgv
 ughhrghtrdgtohhmpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnheslhhish
 htshdrohhsuhhoshhlrdhorhhg
X-ME-Proxy: <xmx:2-taaAaxvwqGdwbAj1k_t3LBQOLaEt2ZlzZe2Y3XKhJBtm60xJhO2g>
 <xmx:2-taaOaHdW4mjJrXXHwn3s9rgnxiCFUsLfZLDiad67M8ELcIQgnrzA>
 <xmx:2-taaEAdEt1fNiC9LMKofyE_NzrSN2vEbkKe9drL1c2O43Xgf-j94Q>
 <xmx:2-taaMaFm1D-xYN_JaZOgSHqhIJH3qFRK6Ef1ec8xCkR23tgKITtOg>
 <xmx:3OtaaLPDZItZE2PQO623UVfkVioF5bDeE4QbN1J08M8aGWrcxuKjBo3o>
Feedback-ID: i9ff147ff:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 24 Jun 2025 14:18:01 -0400 (EDT)
Message-ID: <431c1aaa-304d-4291-97f8-c092a6bee884@ursu.me>
Date: Tue, 24 Jun 2025 21:17:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacek Kowalski <jacek@jacekk.info>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <fe064a2c-31d6-4671-ba30-198d121782d0@jacekk.info>
 <b7856437-2c74-4e01-affa-3bbc57ce6c51@jacekk.info>
 <8538df94-8ce3-422d-a360-dd917c7e153a@jacekk.info>
Content-Language: en-US
From: Vlad URSU <vlad@ursu.me>
In-Reply-To: <8538df94-8ce3-422d-a360-dd917c7e153a@jacekk.info>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursu.me; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1750789084;
 x=1750875484; bh=NciPXSYJhwcZ1bsK1ubxsblaN89sbnSvIgaoVIz9JbM=; b=
 PVdN8LBRwUbXlpOdljRRcCNcoy77SF3sv3dl+q2Ljh+MeRcWSvH2QG+YI1TFssQI
 4C8KWeFkxLaPMKWxyKCicFbjzUvzKtArVllKR5Q/pNWZxIHqPKWsWpxJMTj9HY5z
 YGsvL5ZCdeIew9W4/XGhS5N5i4o33rNdoNpGHhDKWLvZTy639/jXSKHVx8nsNyWr
 YkaIAtbOnzPJNcV25DliWWcK/6joQieUiV2/7VS2eRPbhh/UhCr7OvyQFaij3Xke
 cAXE3fiMFSSnV17n1O+KwcC9BSQ9ptpHebL9IQz1WWIh7S4aa01wu+bqB1liD000
 CF662nMGNOx/JBw3nnxRjg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1750789084; x=
 1750875484; bh=NciPXSYJhwcZ1bsK1ubxsblaN89sbnSvIgaoVIz9JbM=; b=o
 qvhvEidl+Sx8Stsy7sPbFdXvHZm2m+Q5xZS+LPmJCXJYqal4YwpZo85t+5GDUAJP
 2Y9mr5Ach3BXYSw4d9mJS03n1cGlmvCtMLaGUaSMdtImSpy17iIr5q1RIWVod5OI
 OPFEU6aS8F3vUPGh4S3yUUBXFxBCPGy5q55BsOniJSGbZo/XT/+ETzY2lW4SNywJ
 eMMN0TtZyEBbFi0QqiGuxbGt84VDCmOwZR2WYPH/rMoM4QLzoEEocAYu1RD5oFuR
 aXsqfLQVilLuqlZYpArBPp4AkdpUPXwmxyVLH+R38ACgV9M5KW/YU0BDzb1t1y2S
 BsqC/MjiuTHWjmUCHojEg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=ursu.me
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=ursu.me header.i=@ursu.me
 header.a=rsa-sha256 header.s=fm3 header.b=PVdN8LBR; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=oqvhvEid
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

On 23.06.2025 19:18, Jacek Kowalski wrote:
> Vlad,
> 
> could you verify that the following patch works for you?
> 
>> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
>> index 8294a7c4f122..01696eb8dace 100644
>> --- a/drivers/net/ethernet/intel/e1000e/defines.h
>> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
>> @@ -637,6 +637,7 @@
>>   
>>   /* For checksumming, the sum of all words in the NVM should equal 0xBABA. */
>>   #define NVM_SUM                    0xBABA
>> +#define NVM_SUM_FACTORY_DEFAULT    0xFFFF
>>   
>>   /* PBA (printed board assembly) number words */
>>   #define NVM_PBA_OFFSET_0           8
>> diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
>> index e609f4df86f4..37cbf9236d84 100644
>> --- a/drivers/net/ethernet/intel/e1000e/nvm.c
>> +++ b/drivers/net/ethernet/intel/e1000e/nvm.c
>> @@ -558,6 +558,11 @@ s32 e1000e_validate_nvm_checksum_generic(struct e1000_hw *hw)
>>   		checksum += nvm_data;
>>   	}
>>   
>> +	if (hw->mac.type == e1000_pch_tgp && checksum == (u16)NVM_SUM_FACTORY_DEFAULT) {
>> +		e_dbg("Factory-default NVM Checksum on TGP platform - ignoring\n");
>> +		return 0;
>> +	}
>> +
>>   	if (checksum != (u16)NVM_SUM) {
>>   		e_dbg("NVM Checksum Invalid\n");
>>   		return -E1000_ERR_NVM;
> 

No, it doesn't.

You are comparing the wrong value with NVM_SUM_FACTORY_DEFAULT. You 
should check it against the checksum word 0x3F (NVM bytes 0x7E and 0x7F) 
which is used to ensure that the base NVM image
is a valid image, and which in my case is left unchanged by Dell in the 
firmware.

I believe the changes should look something like this:

---
  drivers/net/ethernet/intel/e1000e/defines.h |  3 +++
  drivers/net/ethernet/intel/e1000e/nvm.c     | 13 ++++++++++++-
  2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/defines.h 
b/drivers/net/ethernet/intel/e1000e/defines.h
index 8294a7c4f122..996a0f4d2b49 100644
--- a/drivers/net/ethernet/intel/e1000e/defines.h
+++ b/drivers/net/ethernet/intel/e1000e/defines.h
@@ -638,6 +638,9 @@
  /* For checksumming, the sum of all words in the NVM should equal 
0xBABA. */
  #define NVM_SUM                    0xBABA

+/* Factory default value for the NVM checksum word */
+#define NVM_CHECKSUM_WORD_FACTORY_DEFAULT       0xFFFF
+
  /* PBA (printed board assembly) number words */
  #define NVM_PBA_OFFSET_0           8
  #define NVM_PBA_OFFSET_1           9
diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c 
b/drivers/net/ethernet/intel/e1000e/nvm.c
index e609f4df86f4..4620efac0208 100644
--- a/drivers/net/ethernet/intel/e1000e/nvm.c
+++ b/drivers/net/ethernet/intel/e1000e/nvm.c
@@ -547,7 +547,18 @@ s32 e1000e_validate_nvm_checksum_generic(struct 
e1000_hw *hw)
  {
  	s32 ret_val;
  	u16 checksum = 0;
-	u16 i, nvm_data;
+	u16 i, nvm_data, checksum_word;
+
+	ret_val = e1000_read_nvm(hw, NVM_CHECKSUM_REG, 1, &checksum_word);
+	if (ret_val) {
+		e_dbg("NVM Read Error\n");
+		return ret_val;
+	}
+
+	if (hw->mac.type == e1000_pch_tgp && checksum_word == 
(u16)NVM_CHECKSUM_WORD_FACTORY_DEFAULT) {
+		e_dbg("Factory-default NVM Checksum word on TGP platform - ignoring\n");
+		return 0;
+	}

  	for (i = 0; i < (NVM_CHECKSUM_REG + 1); i++) {
  		ret_val = e1000_read_nvm(hw, i, 1, &nvm_data);
-- 
