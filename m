Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C274180255B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Dec 2023 17:22:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F2D640962;
	Sun,  3 Dec 2023 16:22:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F2D640962
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701620560;
	bh=mCijzQPNgXa/KnmdVXH18KCgj6r7KTH/xNE76fKZEfc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xmtCmy/wZ0II54mqov9gh0+rnPDn/S2PDtb1tAl1hWFFqPxLaZcQPbDUd8Cs392G9
	 LgetqCWT+9EHSzRD0FaqUP6n7Fd7H7Z2iWSMjcm4brP7nEQ28tcHmNtfb4zEYl6T0j
	 bue6jXHbWDcRC1JmrnlwfgMIWNCFIzHWtYfNB66mGqS2MRsyp/FuXxw69mywCudj5r
	 KP+sYs4emcv69wYMZXlLG5rHPvp8XtvSKyb7uww6SsbTeqxpagPI00So9OxsAPKVHH
	 eCCNbHZ7JMfI94l8GLs5MO0bBA2iXKhEnCfunwU09ToUCrfX5C/IpANRCxUsvbzqmv
	 np8J8rhtKYNiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKmfXR-hjwHd; Sun,  3 Dec 2023 16:22:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B86A40900;
	Sun,  3 Dec 2023 16:22:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B86A40900
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33CE71BF471
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 16:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0861740992
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 16:22:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0861740992
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ONileYLRMzzF for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Dec 2023 16:22:32 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C480540510
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 16:22:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C480540510
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 98C07CE0C65;
 Sun,  3 Dec 2023 16:22:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DD6AC433C7;
 Sun,  3 Dec 2023 16:22:23 +0000 (UTC)
Date: Sun, 3 Dec 2023 16:22:20 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231203162220.GI50400@kernel.org>
References: <20231124150343.81520-1-ivecera@redhat.com>
 <20231124150343.81520-5-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124150343.81520-5-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701620546;
 bh=1D5FKtel1VuNniwfQ/musH6gWf5qfNnpEwCMYMUVgJc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GJfgYHrsypf112t+OadRsWcTxv/HX4EHyGz2Vo/29NF+Oc0dPsDRAkyjrLHDR4nd6
 IkxnDYdoXrbxNUbc12mTL2MqE4/fbGjML+61hS4zLGuStCUmi634qR2Ho5sJMk3YsA
 b8c7nehyG3aq34c1WReSXXf/WXNxxqAz4O2Jjum90C5v5pKyi7AhW18RE0iBxXLLEB
 G+OL8yUeejrO2qjS1GCMDJY6cgkXwFr+jyVcn4Y0gMIbgz5rd+s6WX6chcneVkaZkN
 g+sjBz3Ix7q0YG6r5i/4+yByVsxU3+CSQ8rixsthhIv3e4oGz1oH+ZbW4adeKDIbXd
 64KLuysIY+uyQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GJfgYHrs
Subject: Re: [Intel-wired-lan] [PATCH v5 4/5] i40e: Fix broken support for
 floating VEBs
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 24, 2023 at 04:03:42PM +0100, Ivan Vecera wrote:
> Although the i40e supports so-called floating VEB (VEB without
> an uplink connection to external network), this support is
> broken. This functionality is currently unused (except debugfs)
> but it will be used by subsequent series for switchdev mode
> slow-path. Fix this by following:
> 
> 1) Handle correctly floating VEB (VEB with uplink_seid == 0)
>    in i40e_reconstitute_veb() and look for owner VSI and
>    create it only for non-floating VEBs and also set bridge
>    mode only for such VEBs as the floating ones are using
>    always VEB mode.
> 2) Handle correctly floating VEB in i40e_veb_release() and
>    disallow its release when there are some VSIs. This is
>    different from regular VEB that have owner VSI that is
>    connected to VEB's uplink after VEB deletion by FW.
> 3) Fix i40e_add_veb() to handle 'vsi' that is NULL for floating
>    VEBs. For floating VEB use 0 for downlink SEID and 'true'
>    for 'default_port' parameters as per datasheet.
> 4) Fix 'add relay' command in i40e_dbg_command_write() to allow
>    to create floating VEB by 'add relay 0 0' or 'add relay'
> 
> Tested using debugfs:
> 1) Initial state
> [root@host net-next]# echo dump switch > $CMD
> [root@host net-next]# dmesg -c
> [  173.701286] i40e 0000:02:00.0: header: 3 reported 3 total
> [  173.706701] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  173.713241] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  173.719507] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> 
> 2) Add floating VEB
> [root@host net-next]# CMD="/sys/kernel/debug/i40e/0000:02:00.0/command"
> [root@host net-next]# echo add relay > $CMD
> [root@host net-next]# dmesg -c
> [  245.551720] i40e 0000:02:00.0: added relay 162
> [root@host net-next]# echo dump switch > $CMD
> [root@host net-next]# dmesg -c
> [  276.984371] i40e 0000:02:00.0: header: 4 reported 4 total
> [  276.989779] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  276.996302] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  277.002569] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> [  277.009091] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
> 
> 3) Add VMDQ2 VSI to this new VEB
> [root@host net-next]# echo add vsi 162 > $CMD
> [root@host net-next]# dmesg -c
> [  332.314030] i40e 0000:02:00.0: added VSI 394 to relay 162
> [  332.337486] enp2s0f0np0v0: NIC Link is Up, 40 Gbps Full Duplex, Flow Control: None
> [root@host net-next]# echo dump switch > $CMD
> [root@host net-next]# dmesg -c
> [  387.284490] i40e 0000:02:00.0: header: 5 reported 5 total
> [  387.289904] i40e 0000:02:00.0: type=19 seid=394 uplink=162 downlink=16
> [  387.296446] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
> [  387.302708] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  387.309234] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  387.315500] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> 
> 4) Try to delete the VEB
> [root@host net-next]# echo del relay 162 > $CMD
> [root@host net-next]# dmesg -c
> [  428.749297] i40e 0000:02:00.0: deleting relay 162
> [  428.754011] i40e 0000:02:00.0: can't remove VEB 162 with 1 VSIs left
> 
> 5) Do PF reset and check switch status after rebuild
> [root@host net-next]# echo pfr > $CMD
> [root@host net-next]# echo dump switch > $CMD
> [root@host net-next]# dmesg -c
> [  738.056172] i40e 0000:02:00.0: header: 5 reported 5 total
> [  738.061577] i40e 0000:02:00.0: type=19 seid=394 uplink=162 downlink=16
> [  738.068104] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
> [  738.074367] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  738.080892] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  738.087160] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> 
> 6) Delete VSI and delete VEB
> [root@host net-next]# echo del vsi 394 > $CMD
> [root@host net-next]# echo del relay 162 > $CMD
> [root@host net-next]# echo dump switch > $CMD
> [root@host net-next]# dmesg -c
> [ 1233.081126] i40e 0000:02:00.0: deleting VSI 394
> [ 1239.345139] i40e 0000:02:00.0: deleting relay 162
> [ 1244.886920] i40e 0000:02:00.0: header: 3 reported 3 total
> [ 1244.892328] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [ 1244.898853] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [ 1244.905119] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
