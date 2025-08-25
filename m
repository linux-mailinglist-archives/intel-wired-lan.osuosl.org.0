Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C43FEB33E30
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Aug 2025 13:38:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B11E41C53;
	Mon, 25 Aug 2025 11:38:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B4bWNkubeFVw; Mon, 25 Aug 2025 11:38:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0670741D16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756121880;
	bh=LFr1mHLQHmymfIMmiGyDywEotybNazlB760hHKfydCo=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BlBaZJrpJCbo5mYjgL4N7BV+GQYR/sBLHt6dPmvA5nB2C8OJI6sQXn5L/B+mi8sXp
	 5ggs5Mb9N6Sf52cQ4J3jnF5ljzTj+svMZpcpjmgoWJaloUzzh6zOVebBVvfo4S6AbK
	 38Bb5//ypCaZjg4VZjRvAOjRqXkpZxONTmm3XSoqLwa0W2zyB8beGEk5+9P/YvbUkJ
	 /FVZ2NC+xZXvdm2FIbGlmXmqyjqXoBP4l8c/GbeSjO9j/Jdtp73n7c1xYLT6ynjkBV
	 l2KL4z/7yAAM4fAKZo89yveoz4R9cYRTvfiWgap3izrg6Dr/SRwS36+Xv1XC2S71uM
	 uY6ZKptLONakw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0670741D16;
	Mon, 25 Aug 2025 11:38:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E1F35CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 11:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4ED361115
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 11:37:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hXVMhR32-z0L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Aug 2025 11:37:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.42.203.116;
 helo=pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=32597ec45=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E9BBE6E5F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9BBE6E5F7
Received: from pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.42.203.116])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E9BBE6E5F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 11:37:57 +0000 (UTC)
X-CSE-ConnectionGUID: LXYLVSUaSkGxnRvZzxVUKw==
X-CSE-MsgGUID: Tp+3JHbLSRKJR3bj7LHKVg==
X-IronPort-AV: E=Sophos;i="6.17,312,1747699200"; 
   d="scan'208";a="1730987"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2025 11:37:55 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.38.20:2333]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.61.91:2525]
 with esmtp (Farcaster)
 id a2179302-ef14-4dc9-a481-2554f80cf144; Mon, 25 Aug 2025 11:37:55 +0000 (UTC)
X-Farcaster-Flow-ID: a2179302-ef14-4dc9-a481-2554f80cf144
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Mon, 25 Aug 2025 11:37:54 +0000
Received: from b0be8375a521.amazon.com (10.37.245.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Mon, 25 Aug 2025 11:37:52 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <przemyslaw.kitszel@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <pmenzel@molgen.mpg.de>
Date: Mon, 25 Aug 2025 20:36:54 +0900
Message-ID: <20250825113743.56559-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <781791cb-b22f-4197-a4e6-ff11a6fba8d9@intel.com>
References: <781791cb-b22f-4197-a4e6-ff11a6fba8d9@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [10.37.245.10]
X-ClientProxiedBy: EX19D040UWB001.ant.amazon.com (10.13.138.82) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756121877; x=1787657877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LFr1mHLQHmymfIMmiGyDywEotybNazlB760hHKfydCo=;
 b=ScFf0o0cPBw28MH+pbvDMuerdaQP7Dgoy9dASHOUQYJkUFRLzp1KzCyZ
 xY3V/CrvWjZo0+PHTiKMrIm05IL0WE8ha3MCiPrxFFPaTZ5rIpZocAQkA
 M5h4bnz/zkREU9NaATxKM79RWu+cTjYWhq4S0s/q1V651yhK08VuJjgn1
 uY9vEi6pffta9qHUn3cVf+z2HAIzLqPWJxBwCdMwV/OmHov993XI6QngN
 MmUsKysjaoDTiHkVqbbmFF71gQvJqhwot/dRBlIhbJY3t0xuG3mcgvb1J
 h4xGG559RABTHNhqcjvm6CkttQD4SWzKoFQlONc+ETvTUZflEjdJ5u6kd
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=ScFf0o0c
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: preserve RSS
 indirection table across admin down/up
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

On Mon, 25 Aug 2025 11:48:21 +0200, Przemek Kitszel wrote:=0D
=0D
>On 8/24/25 13:20, Kohei Enju wrote:=0D
>> Currently, the RSS indirection table configured by user via ethtool is=0D
>> reinitialized to default values during interface resets (e.g., admin=0D
>> down/up, MTU change). As for RSS hash key, commit 3dfbfc7ebb95 ("ixgbe:=
=0D
>> Check for RSS key before setting value") made it persistent across=0D
>> interface resets.=0D
>> =0D
>> By adopting the same approach used in igc and igb drivers which=0D
>> reinitializes the RSS indirection table only when the queue count=0D
>> changes, let's make user configuration persistent as long as queue count=
=0D
>> remains unchanged.=0D
>> =0D
>> Tested on Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network=0D
>> Connection.=0D
>> =0D
>> Test:=0D
>> Set custom indirection table and check the value after interface down/up=
=0D
>> =0D
>>    # ethtool --set-rxfh-indir ens5 equal 2=0D
>>    # ethtool --show-rxfh-indir ens5 | head -5=0D
>> =0D
>>    RX flow hash indirection table for ens5 with 12 RX ring(s):=0D
>>        0:      0     1     0     1     0     1     0     1=0D
>>        8:      0     1     0     1     0     1     0     1=0D
>>       16:      0     1     0     1     0     1     0     1=0D
>>    # ip link set dev ens5 down && ip link set dev ens5 up=0D
>> =0D
>> Without patch:=0D
>>    # ethtool --show-rxfh-indir ens5 | head -5=0D
>> =0D
>>    RX flow hash indirection table for ens5 with 12 RX ring(s):=0D
>>        0:      0     1     2     3     4     5     6     7=0D
>>        8:      8     9    10    11     0     1     2     3=0D
>>       16:      4     5     6     7     8     9    10    11=0D
>> =0D
>> With patch:=0D
>>    # ethtool --show-rxfh-indir ens5 | head -5=0D
>> =0D
>>    RX flow hash indirection table for ens5 with 12 RX ring(s):=0D
>>        0:      0     1     0     1     0     1     0     1=0D
>>        8:      0     1     0     1     0     1     0     1=0D
>>       16:      0     1     0     1     0     1     0     1=0D
>> =0D
>> Signed-off-by: Kohei Enju <enjuk@amazon.com>=0D
>> ---=0D
>>   drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +=0D
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 37 +++++++++++++------=
=0D
>>   2 files changed, 27 insertions(+), 11 deletions(-)=0D
>> =0D
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethe=
rnet/intel/ixgbe/ixgbe.h=0D
>> index 14d275270123..d8b088c90b05 100644=0D
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h=0D
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h=0D
>> @@ -838,6 +838,7 @@ struct ixgbe_adapter {=0D
>>    */=0D
>>   #define IXGBE_MAX_RETA_ENTRIES 512=0D
>>   	u8 rss_indir_tbl[IXGBE_MAX_RETA_ENTRIES];=0D
>> +	u16 last_rss_i;=0D
>>   =0D
>>   #define IXGBE_RSS_KEY_SIZE     40  /* size of RSS Hash Key in bytes */=
=0D
>>   	u32 *rss_key;=0D
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net=
/ethernet/intel/ixgbe/ixgbe_main.c=0D
>> index 80e6a2ef1350..dc5a8373b0c3 100644=0D
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=0D
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=0D
>> @@ -4318,14 +4318,22 @@ static void ixgbe_setup_reta(struct ixgbe_adapte=
r *adapter)=0D
>>   	/* Fill out hash function seeds */=0D
>>   	ixgbe_store_key(adapter);=0D
>>   =0D
>> -	/* Fill out redirection table */=0D
>> -	memset(adapter->rss_indir_tbl, 0, sizeof(adapter->rss_indir_tbl));=0D
>> +	/* Update redirection table in memory on first init or queue count=0D
>> +	 * change, otherwise preserve user configurations. Then always=0D
>> +	 * write to hardware.=0D
>> +	 */=0D
>> +	if (adapter->last_rss_i !=3D rss_i) {=0D
>> +		memset(adapter->rss_indir_tbl, 0,=0D
>> +		       sizeof(adapter->rss_indir_tbl));=0D
>=0D
>Thank you for the patch,=0D
>I see no point in the memset() above, especially given 0 as a valid=0D
>entry in the table.=0D
=0D
Indeed, you're right. I'll remove that. =0D
Thank you for reviewing.=0D
=0D
BTW, I noticed that this patch would unintentionally skip=0D
reinitialization when rss_i remains unchanged but reta_entries changes.=0D
I apologize for overlooking this in my initial patch.=0D
=0D
For example, on some devices reta_entries changes according to its=0D
SR-IOV status (IXGBE_FLAG_SRIOV_ENABLED). By setting queue count in=0D
advance, we may be able to create a situation where rss_i remains=0D
unchanged but reta_entries changes. In this case, this patch would cause=0D
an unintentional skip of reinitialization.=0D
=0D
Unlike igb/igc, ixgbe's reta_entries may change, so IIUC I need to check=0D
reta_entries as well in ixgbe_setup_reta() and ixgbe_setup_vfreta()=0D
like:=0D
=0D
        /* Update redirection table in memory on first init, queue count ch=
ange,=0D
         * or reta entries change, otherwise preserve user configurations. =
Then=0D
         * always write to hardware.=0D
         */=0D
        if (adapter->last_rss_i !=3D rss_i ||=0D
            adapter->last_reta_entries !=3D reta_entries) {=0D
                for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {=0D
                        if (j =3D=3D rss_i)=0D
                                j =3D 0;=0D
=0D
                        adapter->rss_indir_tbl[i] =3D j;=0D
                }=0D
=0D
                adapter->last_rss_i =3D rss_i;=0D
                adapter->last_reta_entries =3D reta_entries;=0D
        }=0D
=0D
>=0D
>> +=0D
>> +		for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {=0D
>> +			if (j =3D=3D rss_i)=0D
>> +				j =3D 0;=0D
>>   =0D
>> -	for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {=0D
>> -		if (j =3D=3D rss_i)=0D
>> -			j =3D 0;=0D
>> +			adapter->rss_indir_tbl[i] =3D j;=0D
>> +		}=0D
>>   =0D
>> -		adapter->rss_indir_tbl[i] =3D j;=0D
>> +		adapter->last_rss_i =3D rss_i;=0D
>>   	}=0D
>>   =0D
>>   	ixgbe_store_reta(adapter);=0D
>> @@ -4347,12 +4355,19 @@ static void ixgbe_setup_vfreta(struct ixgbe_adap=
ter *adapter)=0D
>>   					*(adapter->rss_key + i));=0D
>>   	}=0D
>>   =0D
>> -	/* Fill out the redirection table */=0D
>> -	for (i =3D 0, j =3D 0; i < 64; i++, j++) {=0D
>> -		if (j =3D=3D rss_i)=0D
>> -			j =3D 0;=0D
>> +	/* Update redirection table in memory on first init or queue count=0D
>> +	 * change, otherwise preserve user configurations. Then always=0D
>> +	 * write to hardware.=0D
>> +	 */=0D
>> +	if (adapter->last_rss_i !=3D rss_i) {=0D
>> +		for (i =3D 0, j =3D 0; i < 64; i++, j++) {=0D
>> +			if (j =3D=3D rss_i)=0D
>> +				j =3D 0;=0D
>> +=0D
>> +			adapter->rss_indir_tbl[i] =3D j;=0D
>> +		}=0D
>>   =0D
>> -		adapter->rss_indir_tbl[i] =3D j;=0D
>> +		adapter->last_rss_i =3D rss_i;=0D
>>   	}=0D
>>   =0D
>>   	ixgbe_store_vfreta(adapter);=0D
>=0D
