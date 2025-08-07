Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC169B1D261
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 08:20:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F64E84C50;
	Thu,  7 Aug 2025 06:20:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zwVcAfEKLzhx; Thu,  7 Aug 2025 06:20:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E46A984C52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754547631;
	bh=ldWJkEViKzeeZhpHPIxJw9DUR1NeGMEeby1XOsJWON4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oN54E4a166ABgOFF0Tc2BPiJttNvds3uuZdEFptbBWD1bKukk7aqi0cQBUN/sSOal
	 kW0GAsUEjAAWrsI1NnkXWZtVz4ksbXOXNlaDwqnPBi85mqLeAhSW8e9bja5+XtBK2t
	 8BNZ+T6rzgGozkA5x4xQojTK+tzPQxSVJltuXwR1/Tv/ZjzYdJK3XQ9+7n/wUxSKB0
	 4TvocxiKPRVXGZPGsAwa1m0aJTnwT8IQiOxI7tF8DrAWLlhVNYLNYaiRhVhJ6cqOG/
	 rEMkh2q/dRwlXYvvDZetYjDyseDPS+OiNwAm6SvMGnE2wMhobWk/HEbqHmJlkxnS8q
	 VVA0IMtNbkIWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E46A984C52;
	Thu,  7 Aug 2025 06:20:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F880D79
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 06:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E46D40095
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 06:20:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rB7bQ7KmBXKT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 06:20:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D344D41D98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D344D41D98
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D344D41D98
 for <intel-wired-lan@osuosl.org>; Thu,  7 Aug 2025 06:20:28 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7c7.dynamic.kabel-deutschland.de
 [95.90.247.199])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 59C0E61E647B3;
 Thu, 07 Aug 2025 08:20:05 +0200 (CEST)
Message-ID: <1f9bb468-4a82-4b08-8730-87a4f0bd3ce2@molgen.mpg.de>
Date: Thu, 7 Aug 2025 08:20:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: Mikael Wessel <post@mikaelkw.online>, intel-wired-lan@osuosl.org
References: <20250807040505.1716056-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250807040505.1716056-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix heap
 overflow in e1000_set_eeprom
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

Dear Vitaly, dear Mikael,


Thank you for the patch.

Am 07.08.25 um 06:05 schrieb Vitaly Lifshits:
> Fix a possible heap overflow in e1000_set_eeprom function by adding
> input validation for the requested length of the change in the EEPROM.

Do you have a reproducer for this issue?

> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
> Co-developed-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: Use check_add_overflow for boundary checking
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 9364bc2b4eb1..2bfbc7fd9559 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -550,6 +550,7 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   	struct e1000_adapter *adapter = netdev_priv(netdev);
>   	struct e1000_hw *hw = &adapter->hw;
>   	u16 *eeprom_buff;
> +	u32 total_len;

Use `unsigned int`? Although the type of `max_len` is signed for 
whatever reason.

>   	void *ptr;
>   	int max_len;
>   	int first_word;
> @@ -569,6 +570,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   
>   	max_len = hw->nvm.word_size * 2;
>   
> +	if (check_add_overflow(eeprom->offset, eeprom->len, &total_len) ||
> +	    total_len > max_len)
> +		return -EINVAL;
> +

A few places in the Linux kernel also add `unlikely` in front of it. 
Would that make sense here?

Also, how is the error case logged?

>   	first_word = eeprom->offset >> 1;
>   	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
>   	eeprom_buff = kmalloc(max_len, GFP_KERNEL);


Kind regards,

Paul
