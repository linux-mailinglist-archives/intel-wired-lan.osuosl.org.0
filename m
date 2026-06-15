Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /J/YNjFYL2rA+gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 03:41:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44184682C59
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 03:41:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="8max/Xw2";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=163.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7CF283083;
	Mon, 15 Jun 2026 01:41:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1S3XDXNXbuT6; Mon, 15 Jun 2026 01:41:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DE8883089
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781487661;
	bh=rkSJZJv6R0h/oeGm4YkXS/z977/uuGVq+lopNuX2gt8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8max/Xw2EJQjaTcsoo0LUkeCymP/iuF9JVjRuOZaE4rWnutlZMmHaolwnLkQ60uxv
	 aCo7d/GEmexgeeJ7fQdtrfS7uOuTVikIztXOTaQbD2eKDV/A8zvCI5rlQQWKoPbziJ
	 rQSHvUrf9tx2VDH49fUX6NAEVASOQvw8D00Mp5vEhL+frUSbjmEjwkquZ4R7JZGAVj
	 7zyUptHghEsLYuSGRugqyGG7tvFSXHeaiJEEq0jMsp1ELS6ohoTotYcjK9aePKzJRq
	 B9qv/0v4FQ5wUKOrC3kCNzMyhJlvfP/F9XAYG2dP7aqYtjHPbmI7lRKw7OFXTHfjLS
	 QfyPeWHHnKAVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DE8883089;
	Mon, 15 Jun 2026 01:41:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 789DE169
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 01:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A43183054
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 01:40:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NukeeE7mvIQZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 01:40:58 +0000 (UTC)
X-Greylist: delayed 742 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 15 Jun 2026 01:40:57 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7471B83051
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7471B83051
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=117.135.210.2;
 helo=m16.mail.163.com; envelope-from=clementwei90@163.com; receiver=<UNKNOWN> 
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7471B83051
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 01:40:57 +0000 (UTC)
Received: from [10.42.20.136] (unknown [])
 by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id
 _____wDnZ5caWC9q21ylDg--.7092S2; 
 Mon, 15 Jun 2026 09:40:43 +0800 (CST)
Message-ID: <9d3dfe98-676f-4a85-9e85-241f79ecfaea@163.com>
Date: Mon, 15 Jun 2026 09:40:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Rongguang Wei <weirongguang@kylinos.cn>
References: <20260612080331.120096-1-clementwei90@163.com>
 <PH0PR11MB590263784927AAB47EE558BAF0182@PH0PR11MB5902.namprd11.prod.outlook.com>
From: Rongguang Wei <clementwei90@163.com>
In-Reply-To: <PH0PR11MB590263784927AAB47EE558BAF0182@PH0PR11MB5902.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _____wDnZ5caWC9q21ylDg--.7092S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Ar4xZFW3WryfWF4xJFykAFb_yoW8Cr1Dpr
 WUCa4DCr4UWr9Fga97Xw18ZF90k392qrWruF4fCw1Yg3s8JrWktr1xtF4UGryavw47C3y3
 JF1Yv3ZxA3Z8AaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07Uca9-UUUUU=
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: 5fohzv5qwzvxizq6il2tof0z/xtbC4huC7WovWBvqpgAA3c
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=Message-ID:Date:MIME-Version:Subject:To:From:
 Content-Type; bh=rkSJZJv6R0h/oeGm4YkXS/z977/uuGVq+lopNuX2gt8=;
 b=jj/zqXFeTA0dWoN//f2z6vDL56BJfsqUUHvoSLib3FVpIsC85nYvjxKWoelmNX
 YwtnMDtWfd1i5QA364AKIP5ThuhMyli8owciGFTPiUQp265WAllpu4cvlr1f7DpO
 8rLYacTySYS97WF8/k8W68F7likyHtbeTiFE7hmGjvj2o=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=163.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256
 header.s=s110527 header.b=jj/zqXFe
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] e1000: Initialize
 phy_data to avoid unexpected values
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[163.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:weirongguang@kylinos.cn,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kylinos.cn:email];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[clementwei90@163.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_FROM(0.00)[163.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clementwei90@163.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 44184682C59



在 2026/6/12 16:58, Jagielski, Jedrzej 写道:
> From: Rongguang Wei <clementwei90@163.com> 
> Sent: Friday, June 12, 2026 10:04 AM
> 
>> From: Rongguang Wei <weirongguang@kylinos.cn>
>>
>> The phy_data variable is not initialized. If e1000_read_phy_reg
>> returns an error, phy_data will not point to a valid value from
>> the PHY register, which may cause the regs_buff array to be populated
>> with unexpected values.
> 
> Hi,
> 
> Sounds like a fix, but i believe we would like to have any real
> scenario when the issue occurs and how it can be reproduced.
> If such is provided please target the patch against net tree and
> add fixes tag.
> 
Hi,
I was not face a real scenario. I just found out there is no check for 
e1000_read_phy_reg return value when I reading the driver code. 
Maybe is better to initialized the value or check the return value of e1000_read_phy_reg.
>>
>> Signed-off-by: Rongguang Wei <weirongguang@kylinos.cn>
>> Change-Id: I46071b3b21a566f8da650168d38d6968251b077d
> 
> 
> i doubt this is a correct kernel commit tag
> 
>> ---
>> drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
>> index 4dcbeabb3ad2..f068108c5004 100644
>> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
>> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
>> @@ -327,7 +327,7 @@ static void e1000_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
>> 	struct e1000_adapter *adapter = netdev_priv(netdev);
>> 	struct e1000_hw *hw = &adapter->hw;
>> 	u32 *regs_buff = p;
>> -	u16 phy_data;
>> +	u16 phy_data = 0;
>>
>> 	memset(p, 0, E1000_REGS_LEN * sizeof(u32));
>>
>> -- 
>> 2.25.1
> 

