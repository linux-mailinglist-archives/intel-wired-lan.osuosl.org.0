Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A737800C78
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 14:46:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5740A84850;
	Fri,  1 Dec 2023 13:46:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5740A84850
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701438414;
	bh=vqxW3DMYS2S/fdi/VZfzzHtAdv33+lkQOCQfZCPoJEo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DkwfmwMTYklISR4gSYqyXNeJNFnTdvHEpUaJLci8oVv7pBt5B4idkmG5/PDySxF5r
	 wKrZQzzKm6E4We/kGaKn+JriYzOMiLy4UxiO0Eqn7RhIpKEpjWPPkEbMsGZ5gT26qQ
	 eC0E3b+tQAqE4ROzUIrFWbg5mnkTDsaelgqMS7Pce2db+Y3iurWhqb/cqDog92TZju
	 jQOuNdIAjzJDPP3PUHkw2FqtM5ygLJaY0TvLJlVmoLIMAjncB6PMs48BnAizL+CBNO
	 w919500H+INzk1qxkAUvLx+a7598AwN1FUgL/fpyErRX7zL/YjtrRbGOz/hwYOHMuQ
	 GQgFdP6+MBt9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I3hqS5iI3Oxj; Fri,  1 Dec 2023 13:46:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCDD88484E;
	Fri,  1 Dec 2023 13:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCDD88484E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BEC21BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 13:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5FE704214B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 13:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FE704214B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D92t8bo2QuVW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 13:46:45 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FDD842142
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 13:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FDD842142
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-295-JxDopkrqPtS-12mHFloEHw-1; Fri, 01 Dec 2023 08:46:40 -0500
X-MC-Unique: JxDopkrqPtS-12mHFloEHw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8D7C811E7B;
 Fri,  1 Dec 2023 13:46:39 +0000 (UTC)
Received: from [10.45.225.216] (unknown [10.45.225.216])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AA6F12166B26;
 Fri,  1 Dec 2023 13:46:37 +0000 (UTC)
Message-ID: <27946430-66d0-4a09-b275-ead122a082ce@redhat.com>
Date: Fri, 1 Dec 2023 14:46:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Brelinski, Tony" <tony.brelinski@intel.com>,
 Simon Horman <horms@kernel.org>
References: <20231124164233.86691-1-ivecera@redhat.com>
 <20231129163618.GD43811@kernel.org>
 <DM6PR11MB4218C83B7A07BB833D298D388282A@DM6PR11MB4218.namprd11.prod.outlook.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <DM6PR11MB4218C83B7A07BB833D298D388282A@DM6PR11MB4218.namprd11.prod.outlook.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1701438404;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CZOsoVNTrlsyDIj04ZnPkYY4FYY9jzgQ1kRjegPcrJ4=;
 b=Sa3WRT3JBZLz14Sbr05jHknYxInAhAc4ooc2hlXeXXFfIxFCJOlolyYy8/h4YAthBSjrKt
 xU8LBmapDFApZ4jjJxatNOHE7yHeKelSIAMXh+vU9mlU8OXJdLj2nCEbWx5T8nZwI+5nei
 rDXDHgBzRCXk2m6PuHlFC9ZVxotkzfk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Sa3WRT3J
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix kernel crash during
 macvlan offloading setup
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
Cc: Paolo Abeni <pabeni@redhat.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Harshitha Ramamurthy <harshitha.ramamurthy@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 30. 11. 23 20:24, Brelinski, Tony wrote:
>> -----Original Message-----
>> From: Intel-wired-lan<intel-wired-lan-bounces@osuosl.org>  On Behalf Of
>> Simon Horman
>> Sent: Wednesday, November 29, 2023 8:36 AM
>> To: ivecera<ivecera@redhat.com>
>> Cc: Harshitha Ramamurthy<harshitha.ramamurthy@intel.com>; Drewek,
>> Wojciech<wojciech.drewek@intel.com>;netdev@vger.kernel.org;
>> Brandeburg, Jesse<jesse.brandeburg@intel.com>; open list <linux-
>> kernel@vger.kernel.org>; Eric Dumazet <edumazet@google.com>; Nguyen,
>> Anthony L<anthony.l.nguyen@intel.com>; Jeff Kirsher
>> <jeffrey.t.kirsher@intel.com>; moderated list:INTEL ETHERNET DRIVERS <intel-
>> wired-lan@lists.osuosl.org>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub
>> Kicinski<kuba@kernel.org>; Paolo Abeni<pabeni@redhat.com>; David S.
>> Miller<davem@davemloft.net>
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix kernel crash during
>> macvlan offloading setup
>>
>> On Fri, Nov 24, 2023 at 05:42:33PM +0100, Ivan Vecera wrote:
>>> Function i40e_fwd_add() computes num of created channels and num of
>>> queues per channel according value of pf->num_lan_msix.
>>>
>>> This is wrong because the channels are used for subordinated net
>>> devices that reuse existing queues from parent net device and number
>>> of existing queue pairs (pf->num_queue_pairs) should be used instead.
>>>
>>> E.g.:
>>> Let's have (pf->num_lan_msix == 32)... Then we reduce number of
>>> combined queues by ethtool to 8 (so pf->num_queue_pairs == 8).
>>> i40e_fwd_add() called by macvlan then computes number of macvlans
>>> channels to be 16 and queues per channel 1 and calls
>>> i40e_setup_macvlans(). This computes new number of queue pairs for PF
>>> as:
>>>
>>> num_qps = vsi->num_queue_pairs - (macvlan_cnt * qcnt);
>>>
>>> This is evaluated in this case as:
>>> num_qps = (8 - 16 * 1) = (u16)-8 = 0xFFF8
>>>
>>> ...and this number is stored vsi->next_base_queue that is used during
>>> channel creation. This leads to kernel crash.
>>>
>>> Fix this bug by computing the number of offloaded macvlan devices and
>>> no. their queues according the current number of queues instead of
>>> maximal one.
>>>
>>> Reproducer:
>>> 1) Enable l2-fwd-offload
>>> 2) Reduce number of queues
>>> 3) Create macvlan device
>>> 4) Make it up
>>>
>>> Result:
>>> [root@cnb-03 ~]# ethtool -K enp2s0f0np0 l2-fwd-offload on
>>> [root@cnb-03 ~]# ethtool -l enp2s0f0np0 | grep Combined
>>> Combined:       32
>>> Combined:       32
>>> [root@cnb-03 ~]# ethtool -L enp2s0f0np0 combined 8
>>> [root@cnb-03 ~]# ip link add link enp2s0f0np0 mac0 type macvlan mode
>>> bridge
>>> [root@cnb-03 ~]# ip link set mac0 up
>>> ...
>>> [ 1225.686698] i40e 0000:02:00.0: User requested queue count/HW max
>>> RSS count:  8/32 [ 1242.399103] BUG: kernel NULL pointer dereference,
>>> address: 0000000000000118 [ 1242.406064] #PF: supervisor write access
>>> in kernel mode [ 1242.411288] #PF: error_code(0x0002) - not-present
>>> page [ 1242.416417] PGD 0 P4D 0 [ 1242.418950] Oops: 0002 [#1]
>> PREEMPT
>>> SMP NOPTI [ 1242.423308] CPU: 26 PID: 2253 Comm: ip Kdump: loaded
>> Not
>>> tainted 6.7.0-rc1+ #20 [ 1242.430607] Hardware name: Abacus electric,
>>> s.r.o. -servis@abacus.cz  Super Server/H12SSW-iN, BIOS 2.4 04/13/2022
>>> [ 1242.440850] RIP:
>>> 0010:i40e_channel_config_tx_ring.constprop.0+0xd9/0x180 [i40e] [
>>> 1242.448165] Code: 48 89 b3 80 00 00 00 48 89 bb 88 00 00 00 74 3c 31
>>> c9 0f b7 53 16 49 8b b4 24 f0 0c 00 00 01 ca 83 c1 01 0f b7 d2 48 8b
>>> 34 d6 <48> 89 9e 18 01 00 00 49 8b b4 24 e8 0c 00 00 48 8b 14 d6 48 89
>>> 9a [ 1242.466902] RSP: 0018:ffffa4d52cd2f610 EFLAGS: 00010202 [
>>> 1242.472121] RAX: 0000000000000000 RBX: ffff9390a4ba2e40 RCX:
>>> 0000000000000001 [ 1242.479244] RDX: 000000000000fff8 RSI:
>>> 0000000000000000 RDI: ffffffffffffffff [ 1242.486370] RBP:
>>> ffffa4d52cd2f650 R08: 0000000000000020 R09: 0000000000000000 [
>>> 1242.493494] R10: 0000000000000000 R11: 0000000100000001 R12:
>>> ffff9390b861a000 [ 1242.500626] R13: 00000000000000a0 R14:
>>> 0000000000000010 R15: ffff9390b861a000 [ 1242.507751] FS:
>> 00007efda536b740(0000) GS:ffff939f4ec80000(0000)
>> knlGS:0000000000000000 [ 1242.515826] CS:  0010 DS: 0000 ES: 0000
>> CR0: 0000000080050033 [ 1242.521564] CR2: 0000000000000118 CR3:
>> 000000010bd48002 CR4: 0000000000770ef0 [ 1242.528699] PKRU:
>> 55555554 [ 1242.531400] Call Trace:
>>> [ 1242.533846]  <TASK>
>>> [ 1242.535943]  ? __die+0x20/0x70
>>> [ 1242.539004]  ? page_fault_oops+0x76/0x170 [ 1242.543018]  ?
>>> exc_page_fault+0x65/0x150 [ 1242.546942]  ?
>>> asm_exc_page_fault+0x22/0x30 [ 1242.551131]  ?
>>> i40e_channel_config_tx_ring.constprop.0+0xd9/0x180 [i40e] [
>>> 1242.557847]  i40e_setup_channel.part.0+0x5f/0x130 [i40e] [
>>> 1242.563167]  i40e_setup_macvlans.constprop.0+0x256/0x420 [i40e] [
>>> 1242.569099]  i40e_fwd_add+0xbf/0x270 [i40e] [ 1242.573300]
>>> macvlan_open+0x16f/0x200 [macvlan] [ 1242.577831]
>>> __dev_open+0xe7/0x1b0 [ 1242.581236]
>> __dev_change_flags+0x1db/0x250
>>> ...
>>>
>>> Fixes: 1d8d80b4e4ff ("i40e: Add macvlan support on i40e")
>>> Signed-off-by: Ivan Vecera<ivecera@redhat.com>
>> Thanks Ivan,
>>
>> I agree with the analysis and that the problem was introduced by the cited
>> patch.
>>
>> Reviewed-by: Simon Horman<horms@kernel.org>
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> The issue this patch is supposed to fix is resolved by this patch, but now there is a new crash seen with this patch.  Crash output below:
> 
> Crash logs:
> 
> [  315.844666] i40e 0000:86:00.0: Query for DCB configuration failed, err -EIO aq_err I40E_AQ_RC_EINVAL
> [  315.844678] i40e 0000:86:00.0: DCB init failed -5, disabled
> [  315.873394] i40e 0000:86:00.0: User requested queue count/HW max RSS count:  1/64
> [  315.900682] i40e 0000:86:00.0 eth4: Not enough queues to support macvlans

I'm able to reproduce now... I have found that the macvlan offloading is 
broken in several ways. I'm working to address theses issues.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
