Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2699C1A08
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 11:11:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10A86844F4;
	Fri,  8 Nov 2024 10:11:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wrnbqYd55L9Y; Fri,  8 Nov 2024 10:11:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1B7884524
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731060702;
	bh=KXUZue/zfN3nu8qQyUkt50Fk/RUY1KQx9eUTOhKBECY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZJ2SePfoE4GDm6eLP5n0ykXIragOWoPJgQDrpQ1Lz24YRbnnmI0t/1XwNT9CptXYA
	 H1dHMMirxkENgkBksZs3RmynxITGMPjxmZElOOmPC6jnvw49gTtzbFii95yUYkQm46
	 +i85wdY5E7SxZ+THOebR9zG8DLFgAZ0yqe9M/27+EciEVxxQ/YwcMdE9L/arY4+NF4
	 5QwuR7FSMG/0rUrrck3dkON++s5Ic+sE4EMRvreDELdzAqmyz0P1CDZh+iMed4Lv6b
	 3LGcogrlxZnFy//RUEHU1vtrq6rb+jvaQj4sIgaOPrqoRyBYb7Cs3RJR99Yx0BYUuE
	 kKFOj8JzNPQ9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1B7884524;
	Fri,  8 Nov 2024 10:11:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 97611D8F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 10:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8509940226
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 10:11:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LTb-fO8dyyGK for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 10:11:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CEE534019D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEE534019D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CEE534019D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 10:11:38 +0000 (UTC)
X-CSE-ConnectionGUID: xB4pHgEeSWiB4Nm1nfSJnA==
X-CSE-MsgGUID: EuuNGT/uT3OGlW59Vem39Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="42337160"
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="42337160"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 02:11:35 -0800
X-CSE-ConnectionGUID: GoPS3B+tRh+SvriJNAGP1A==
X-CSE-MsgGUID: belM6j1+TPK6T86HO2nXAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="90133195"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 02:11:34 -0800
Date: Fri, 8 Nov 2024 11:08:50 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Szycik, Marcin" <marcin.szycik@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Message-ID: <Zy3jMhc4Bt1AYXod@mev-dev.igk.intel.com>
References: <20241011070328.45874-1-michal.swiatkowski@linux.intel.com>
 <PH0PR11MB50136A29D7ED13173A313FC2965C2@PH0PR11MB5013.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PH0PR11MB50136A29D7ED13173A313FC2965C2@PH0PR11MB5013.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731060699; x=1762596699;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2Y6XQh97IlEZAnUMaaCBRjgRl8DqV3hQ6hBhbo89D8k=;
 b=CHVaLUxpk7chIi50jR8AEdBG8+07inuFoINXDIa4oerazYy8ZEJNh0OD
 XG8OtRmfEEBxbn5kVB0V7pDLUdQDs7fEu8X0zfQgj9zCgCfvnUs9z18hM
 JZ2WR18olxA28uO92jZhyKnQLTdXAaVwQaQCLnQMhCtS4nqrn1IpHKSxP
 HMar14cCgNcop2i7sYrpyQTaHfhSwd3ThNFi+rNUdVPBs9GnqprK7L65I
 eEKDowBk2HrOnarbOwGOEhvBQu8ZAKnTzONrMsFau8Z1Ja3+j8vAQkC6J
 zDW6fksS794/i49jtAj30/Qm0EsVN1Uen1RobWKR7wfiipDXlgZ1p1grw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CHVaLUxp
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check
 in search
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

On Thu, Nov 07, 2024 at 12:06:26PM +0000, Buvaneswaran, Sujai wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Michal Swiatkowski
> > Sent: Friday, October 11, 2024 12:33 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>;
> > Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > Subject: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check in search
> > 
> > The new recipe should be added even if exactly the same recipe already
> > exists with different priority.
> > 
> > Example use case is when the rule is being added from TC tool context.
> > It should has the highest priority, but if the recipe already exists the rule will
> > inherit it priority. It can lead to the situation when the rule added from TC
> > tool has lower priority than expected.
> > 
> > The solution is to check the recipe priority when trying to find existing one.
> > 
> > Previous recipe is still useful. Example:
> > RID 8 -> priority 4
> > RID 10 -> priority 7
> > 
> > The difference is only in priority rest is let's say eth + mac + direction.
> > 
> > Adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI After that IP +
> > MAC_B + RX on RID 10 (from TC tool), forward to PF0
> > 
> > Both will work.
> > 
> > In case of adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI ARP +
> > MAC_A + RX on RID 10, forward to PF0.
> > 
> > Only second one will match, but this is expected.
> > 
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_switch.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> 
> Hi,
> 
> I tried configuring two rules with same match parameters but with different priorities. One rule redirecting the PF traffic to VF_PR1 and other one to VF_PR2.
> 
> In this case, I notice that both the VFs are able to receive the same packet from the PF. Can you please confirm if this is expected?
> 
> Below are the rules (1 and 3) used.
> 
> [root@cbl-mariner ~]# tc filter show dev ens5f0np0 root
> filter ingress protocol ip pref 1 flower chain 0 
> filter ingress protocol ip pref 1 flower chain 0 handle 0x1 
>   dst_mac 52:54:00:00:16:01
>   src_mac b4:96:91:9f:65:58
>   eth_type ipv4
>   skip_sw
>   in_hw in_hw_count 1
>         action order 1: mirred (Egress Redirect to device eth0) stolen
>         index 5 ref 1 bind 1
> 
> filter ingress protocol ip pref 1 flower chain 0 handle 0x2 
>   dst_mac 52:54:00:00:16:02
>   src_mac b4:96:91:9f:65:58
>   eth_type ipv4
>   skip_sw
>   in_hw in_hw_count 1
>         action order 1: mirred (Egress Redirect to device eth1) stolen
>         index 6 ref 1 bind 1
> 
> filter ingress protocol ip pref 7 flower chain 0 
> filter ingress protocol ip pref 7 flower chain 0 handle 0x1 
>   dst_mac 52:54:00:00:16:01
>   src_mac b4:96:91:9f:65:58
>   eth_type ipv4
>   skip_sw
>   in_hw in_hw_count 1
>         action order 1: mirred (Egress Redirect to device eth1) stolen
>         index 7 ref 1 bind 1
> 
> Packet captures:
> [root@cbl-mariner ~]# ip netns exec ns1 tcpdump -i ens5f0v0
> dropped privs to tcpdump
> tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
> listening on ens5f0v0, link-type EN10MB (Ethernet), capture size 262144 bytes
> 15:21:21.428973 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 8001.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:21.428986 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 8001.18:5a:58:a3:1c:e0.8060, length 43
> 15:21:21.429001 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 83e8.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:21.429012 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 83e9.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:21.429016 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 83ea.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:21.429029 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 83eb.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:21.429039 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 80c8.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:21.944173 IP 1.1.1.100 > cbl-mariner: ICMP echo request, id 7, seq 4268, length 64
> 15:21:21.944182 IP cbl-mariner > 1.1.1.100: ICMP echo reply, id 7, seq 4268, length 64
> ^C
> 9 packets captured
> 9 packets received by filter
> 0 packets dropped by kernel
> 
> [root@cbl-mariner ~]# ip netns exec ns2 tcpdump -i ens5f0v1
> dropped privs to tcpdump
> tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
> listening on ens5f0v1, link-type EN10MB (Ethernet), capture size 262144 bytes
> 15:21:21.429028 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 83eb.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:21.429040 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 80c8.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:21.944170 IP 1.1.1.100 > 1.1.1.1: ICMP echo request, id 7, seq 4268, length 64
> 15:21:22.968162 IP 1.1.1.100 > 1.1.1.1: ICMP echo request, id 7, seq 4269, length 64
> 15:21:23.432386 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 8001.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:23.432403 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 8001.18:5a:58:a3:1c:e0.8060, length 43
> 15:21:23.432430 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 83e8.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:23.432472 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 83e9.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:23.432508 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 83ea.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:23.432549 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 83eb.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:23.432588 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agreement], bridge-id 80c8.18:5a:58:a3:1c:e0.8060, length 42
> 15:21:23.992156 IP 1.1.1.100 > 1.1.1.1: ICMP echo request, id 7, seq 4270, length 64
> 

Hi,

Yes, it is expected. We don't support different priority from tc yet, so
no matter what priority from tc you will choose it will be programmed
with the same priority in hw.

Thanks,
Michal

> Regards,
> Sujai B
