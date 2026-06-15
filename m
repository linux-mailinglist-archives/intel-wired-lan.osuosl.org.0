Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ghY9LeVVL2p8+gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 03:31:17 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FCD682C1D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 03:31:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=mQiTVX1I;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=163.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6586E60C11;
	Mon, 15 Jun 2026 01:31:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QOjR09aws25X; Mon, 15 Jun 2026 01:31:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC6F360B8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781487074;
	bh=M483btWre2cnhhj8gL56GG70ENRhHk5py6rwm6CMRmU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mQiTVX1IoyLiTrxZw8iXhe30uwiLnTtXgt4mCl8UfJLOYMXfxWpoavb6l4I7YZnkD
	 mM/0AkmC0UrhQ3nCvQ30Ni5EXqfPNoqva13PkimDAn/zmGMRa9YDHiq3kH32yUeMG0
	 3eEyhasnUuNudifmyp2Y6cvtHsCvJtU2/4hMDs//vRXvwsIiJde3bJ0Z5Qn8aSmgXq
	 L3+l8iy2IIYnb1uiBdI6qEvhnxPKgm5/Qi/IFQDHUE7ODhrK73at3IVApIaaYT88La
	 R6hQk8+OeWWnDSW8HdVdt0OrM48txWyWpOmIfx5seLA07qQ/JG8og1mFcZMAyP0Vk0
	 Hf8q4Z1t/I1Vg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC6F360B8A;
	Mon, 15 Jun 2026 01:31:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A74B169
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 01:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 442C640520
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 01:31:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LXD0QOwBAOIC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 01:31:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=220.197.31.4;
 helo=m16.mail.163.com; envelope-from=clementwei90@163.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE71D403F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE71D403F0
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE71D403F0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 01:31:11 +0000 (UTC)
Received: from [10.42.20.136] (unknown [])
 by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wBXRPIwVS9qIyKeDA--.149S2;
 Mon, 15 Jun 2026 09:28:18 +0800 (CST)
Message-ID: <6a4bb07e-dbfb-4017-b0c3-b01ef2fc5432@163.com>
Date: Mon, 15 Jun 2026 09:28:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
Cc: przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Rongguang Wei <weirongguang@kylinos.cn>
References: <20260612080331.120096-1-clementwei90@163.com>
 <1578c474-ffbf-46f7-b906-49da4ea48142@lunn.ch>
Content-Language: en-US
From: Rongguang Wei <clementwei90@163.com>
In-Reply-To: <1578c474-ffbf-46f7-b906-49da4ea48142@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _____wBXRPIwVS9qIyKeDA--.149S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uF1UAF48JrWxGw17Xr17trb_yoW8tF45pr
 47Xa4qyF4UXr9Fg397Jw18Ary5X397t3yfCF4fuw1Ygr95JrWvqF1xKFWUGF1avwsrurWa
 vF1jvasxAan8AaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UcSdkUUUUU=
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: 5fohzv5qwzvxizq6il2tof0z/xtbC-hLHM2ovVTLRgQAA3q
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=Message-ID:Date:MIME-Version:Subject:To:From:
 Content-Type; bh=M483btWre2cnhhj8gL56GG70ENRhHk5py6rwm6CMRmU=;
 b=N7Eeqduo/7+BR2+dxEpXDvc7w9quwS9MrtopAynm951PhPbQiXEY9d0IHyyMgW
 nVom+bFZ+bQID10cltGcxkj+0OoIg/pXFcPfI0IinZFiRPWD+176wnUcAUFUnaON
 WUXnuJpD87XBuKEC6z1l1NS/w9yxbn4SSXYkBUCS7Pz88=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=163.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256
 header.s=s110527 header.b=N7Eeqduo
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[163.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER(0.00)[clementwei90@163.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:weirongguang@kylinos.cn,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kylinos.cn:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	HAS_XOIP(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clementwei90@163.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28FCD682C1D



在 2026/6/13 03:39, Andrew Lunn 写道:
> On Fri, Jun 12, 2026 at 04:03:31PM +0800, Rongguang Wei wrote:
>> From: Rongguang Wei <weirongguang@kylinos.cn>
>>
>> The phy_data variable is not initialized. If e1000_read_phy_reg
>> returns an error, phy_data will not point to a valid value from
>> the PHY register, which may cause the regs_buff array to be populated
>> with unexpected values.
>>
>> Signed-off-by: Rongguang Wei <weirongguang@kylinos.cn>
>> Change-Id: I46071b3b21a566f8da650168d38d6968251b077d
> 
> What does this Change-Id mean?
> 
Sorry, it just a auto generate id when I push this patch on my own repos.
I forget to delete.
>> ---
>>  drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
>> index 4dcbeabb3ad2..f068108c5004 100644
>> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
>> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
>> @@ -327,7 +327,7 @@ static void e1000_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
>>  	struct e1000_adapter *adapter = netdev_priv(netdev);
>>  	struct e1000_hw *hw = &adapter->hw;
>>  	u32 *regs_buff = p;
>> -	u16 phy_data;
>> +	u16 phy_data = 0;
> 
> 	if (hw->phy_type == e1000_phy_igp) {
> 		e1000_write_phy_reg(hw, IGP01E1000_PHY_PAGE_SELECT,
> 				    IGP01E1000_PHY_AGC_A);
> 		e1000_read_phy_reg(hw, IGP01E1000_PHY_AGC_A &
> 				   IGP01E1000_PHY_PAGE_SELECT, &phy_data);
> 		regs_buff[13] = (u32)phy_data; /* cable length */
> 
> Isn't a cable length of 0 also unexpected?
> 
> How does this patch actually make the situation better?
> 
Uninitialized variables may be initialized to 0 by the system, explicit initialization
is performed to avoid accidents. 

The 0 is from e1000_read_phy_reg_ex in e1000_main.c and e1000_power_down_phy when use
e1000_read_phy_reg function the last paramenters is initialized 0. So I used this value.

There are many other function which use e1000_read_phy_reg also not initialize the last paramenters
eg. e1000_phy_reset_clk_and_crs. I can do it in V2.
>     
>     Andrew
> 
> ---
> pw-bot: cr

