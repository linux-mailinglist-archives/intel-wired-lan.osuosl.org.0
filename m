Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 421CDBDBD0D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 01:35:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EDFD41267;
	Tue, 14 Oct 2025 23:35:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XWQ7bAHEMudV; Tue, 14 Oct 2025 23:35:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76D1941260
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760484917;
	bh=EeRKDFe+7CLyILBvbwLEcTXHlueXT/H5vuqg6d7djP0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WZfGZEGW3xZTdJSlMeeqaMZlPeryIQ3aI4SVhRlgvINB2K4JDMEHkQJ5SthvQGVIR
	 fUwbc9gzbu241DlVYfaDLCjm/e/fkZ3xWwvNJT8g/7TvwiMB1gcWfIZeYpeXpdcIHJ
	 NCoDtOgoh0Lc8qMClUc/yFJBl9gsH5ja5SHS0HoSvDv09IlqxbS96nONYYHG9Ir0rH
	 GE0YuDH8AIdEGd5eOlzOMCXNhSxZjoPNIaHSvht4JczF0Yu5l9XrmEITBnhhgCMUYc
	 o9I7hyqp2y+0cOH+TyaTmX9XsQtZ0DCvklmmZZZzXWEvF+IaV3OX9VWfFYY2Wrht2O
	 tcXmLpA7VorVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76D1941260;
	Tue, 14 Oct 2025 23:35:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 535E412B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 17:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39BAE40A0B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 17:17:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FcXNuiIYB1VN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Oct 2025 17:17:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=23.88.97.239;
 helo=bkemail.birger-koblitz.de; envelope-from=mail@birger-koblitz.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 709D240943
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 709D240943
Received: from bkemail.birger-koblitz.de (bkemail.birger-koblitz.de
 [23.88.97.239])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 709D240943
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 17:17:22 +0000 (UTC)
Received: by bkemail.birger-koblitz.de (Postfix, from userid 109)
 id 824DB48531; Mon, 13 Oct 2025 17:17:19 +0000 (UTC)
Received: from [IPV6:2a00:6020:47a3:e800:94d3:d213:724a:4e07] (unknown
 [IPv6:2a00:6020:47a3:e800:94d3:d213:724a:4e07])
 by bkemail.birger-koblitz.de (Postfix) with ESMTPSA id 87BC3484CE;
 Mon, 13 Oct 2025 17:17:18 +0000 (UTC)
Message-ID: <70d926a1-e118-43d9-8715-70feebc214a5@birger-koblitz.de>
Date: Mon, 13 Oct 2025 19:17:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251013-10gbx-v1-1-ab9896af3d58@birger-koblitz.de>
 <b5dd3a3e-2420-4c7c-b690-3799fac14623@lunn.ch>
From: Birger Koblitz <mail@birger-koblitz.de>
Content-Language: en-US
In-Reply-To: <b5dd3a3e-2420-4c7c-b690-3799fac14623@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 14 Oct 2025 23:35:13 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=birger-koblitz.de
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Add 10G-BX support
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

On 13/10/2025 6:31 pm, Andrew Lunn wrote:
>> @@ -1678,6 +1679,26 @@ int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
>>   			else
>>   				hw->phy.sfp_type =
>>   					ixgbe_sfp_type_1g_bx_core1;
>> +		/* Support Ethernet 10G-BX, checking the Bit Rate
>> +		 * Nominal Value as per SFF-8472 to be 12.5 Gb/s (67h) and
>> +		 * Single Mode fibre with at least 1km link length
>> +		 */
>> +		} else if ((!comp_codes_10g) && (bitrate_nominal == 0x67) &&
>> +			   (!(cable_tech & IXGBE_SFF_DA_PASSIVE_CABLE)) &&
>> +			   (!(cable_tech & IXGBE_SFF_DA_ACTIVE_CABLE))) {
>> +			status = hw->phy.ops.read_i2c_eeprom(hw,
>> +					    IXGBE_SFF_SM_LENGTH,
>> +					    &sm_length);
> 
> It seems like byte 15, Length (SMF), "Link length supported for single
> mode fiber, units of 100 m" should be checked here. A 255 * 100m would
> be more than 1Km, the condition you say in the comment.
> 
> 	Andrew

Bytes 14 and 15 refer to the same information, just in different units. 
Byte 14 is the SM link length in km, byte 15 the same in 100m units. BX 
offers a link length of at least 1km, up to at least 40km, which would 
overflow to 255 in byte 15. In theory one could make a consistency check 
between bytes 14 and 15 by dividing byte 15 by 10 and comparing the 
result with byte 14, but in terms of identifying link lengths of >=1km, 
checking byte 14 is probably enough, in particular as rounding of byte 
14 could be inconsistently done, making the consistency check difficult. 
One could also check for byte 14 to be 0 and byte 15 to be < 10 to 
identify SM links <1km, but I do not believe such BX modules exist and 
again, there would be the issue of rounding for link lengths >=500m.

Birger
