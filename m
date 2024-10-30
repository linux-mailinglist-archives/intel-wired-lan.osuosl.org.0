Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F23BF9B5FB7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 11:08:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB6EB810AA;
	Wed, 30 Oct 2024 10:08:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uIVxS0t-McVB; Wed, 30 Oct 2024 10:08:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42248810B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730282932;
	bh=aoyqYRRkHEEL8sSP+v1UFQCenPsx/7LS5sbiYM0jCV0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W8eHggsomE48PWDDZBss0MowgM7IoF8Prb3/MEtrfRs+HDSzOUattyDOpepmzW/DG
	 DCsz1kG94B1mQRfIGTgJA+ecLk7p94tGXyNx2pOIMcb4/iAUvJgfkodr4E9ywdP1BE
	 E74+7rnx0KcidIJDKdjQ40Q6QaaQ/n1ywsuHKYOQ5tJdPfHi+LLS8FpL+i6tdE8FP/
	 7hrbAjwhPuNtHohK3ad98Bl8ja6HYO2UBS/GyQwPiUbO5JEPrjbwaAVPcItEVyEPz6
	 5QMgg4fp2HVr6XsoPqre/eibwI1LtYTlcUVe3VSCVczvPaNXav6HMBfaXKTx6TLTaY
	 LjNXo+JNNsIKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42248810B3;
	Wed, 30 Oct 2024 10:08:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F830494E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 10:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FDB560743
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 10:08:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YkvlDg3vZCPQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 10:08:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.134.164.83;
 helo=mail2-relais-roc.national.inria.fr; envelope-from=julia.lawall@inria.fr;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6779760638
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6779760638
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6779760638
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 10:08:47 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.11,244,1725314400"; d="scan'208";a="191419412"
Received: from 089-101-193071.ntlworld.ie (HELO hadrien) ([89.101.193.71])
 by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2024 11:08:44 +0100
Date: Wed, 30 Oct 2024 10:08:43 +0000 (GMT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <ca4f7990-16c4-42ef-b0ae-12e64a100f5e@intel.com>
Message-ID: <498a3d58-55e0-4349-bd92-8ce16c6016@inria.fr>
References: <20241027141907.503946-1-prosunofficial@gmail.com>
 <ca4f7990-16c4-42ef-b0ae-12e64a100f5e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=aoyqYRRkHEEL8sSP+v1UFQCenPsx/7LS5sbiYM0jCV0=;
 b=hfL46OIM18PcKRsLAxYyS/WxSYD8Ro3TW3AC0/4WXC5MaBxvvy+xN3hB
 XXKqxYjLwiNlpZgkf+JWhmsYWK7BgcT/4K8e7Q9O+WPv8+wVPmJnMqayd
 2CiTPAnV5k+TOXBKKvU4T9jqFrdIeEZWEX8LNSQ8d/SXcNL9gx/rvEpSo
 8=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=inria.fr
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256
 header.s=dc header.b=hfL46OIM
X-Mailman-Original-Authentication-Results: mail2-relais-roc.national.inria.fr;
 dkim=none (message not signed)
 header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
Subject: Re: [Intel-wired-lan] [PATCH linux-next] ice: use string choice
 helpers
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
Cc: R Sundar <prosunofficial@gmail.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 Julia Lawall <julia.lawall@inria.fr>, Andrew Lunn <andrew+netdev@lunn.ch>,
 karol.kolacinski@intel.com, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, jacob.e.keller@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On Mon, 28 Oct 2024, Przemek Kitszel wrote:

> On 10/27/24 15:19, R Sundar wrote:
> > Use string choice helpers for better readability.
> >
> > Reported-by: kernel test robot <lkp@intel.com>
> > Reported-by: Julia Lawall <julia.lawall@inria.fr>
> > Closes: https://lore.kernel.org/r/202410121553.SRNFzc2M-lkp@intel.com/
> > Signed-off-by: R Sundar <prosunofficial@gmail.com>
> > ---
>
> thanks, this indeed covers all "enabled/disabled" cases, so:
> Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>
> for future submissions for Intel Ethernet drivers please use the
> iwl-next (or iwl-net) target trees.
>
> There are also other cases that we could cover ON/OFF etc

I counted the number of occurrences of various cases.  Here are the
results for at least 5 occurrences.  I converted everything to lowercase
and put the two strings in alphabetical order.

julia

" " "\n   ": 5
" (full)" "": 5
" (last)" "": 5
" csc" "": 5
" recoverable" "": 5
"" ".5": 5
"" "1": 5
"" ":" systemlow: 5
"" "\"": 5
"" "_backup": 5
"" "auto-": 5
"" "non": 5
"" "t": 5
"" # x " ": 5
"->" "<-": 5
"070701" "070702": 5
"2.4g" "5g": 5
"2g" dpk->bp[path][kidx].band == 1 ? "5g" : "6g": 5
"80m" dpk->bp[path][kidx].bw == rtw89_channel_width_40 ? "40m" : "20m": 5
"aborted" "completed": 5
"active" "disabled": 5
"anode" "sectors": 5
"assert" "deassert": 5
"attach" "detach": 5
"basic rate" "edr rate": 5
"bulk" "isoc": 5
"client" "server": 5
"closed" "open": 5
"correctable" "uncorrectable": 5
"dedicated" "shared": 5
"fcp" "nvme": 5
"fixed" "roll": 5
"full duplex" "half duplex": 5
"full" "high": 5
"gsi" "smi": 5
"hit" "not hit": 5
"ht20" "ht40": 5
"init" "rt": 5
"ips off" "ips on": 5
"lps off" "lps on": 5
"mc" "uc": 5
"migration" "recovery": 5
"none" "tx": 5
"off!!" "on!!": 5
"pause" "resume": 5
"rf_1t1r" "rf_2t2r": 5
"running" "stopped": 5
"set" "unset": 5
"veb" "vepa": 5
kern_emerg kern_info: 5
" " "\n": 6
" -- kernel too old?" "": 6
" and " "": 6
" flr" "": 6
" iaa" "": 6
" int" "": 6
" pcd" "": 6
" periodic" "": 6
" x4" "": 6
"" ")": 6
"" "*not* ": 6
"" ", ibss": 6
"" ".": 6
"" ":": 6
"" "_flip": 6
"" "amps, ": 6
"" "i": 6
"" "no": 6
"" "pkgpwrl1, ": 6
"" "pkgpwrl2, ": 6
"" "prochot, ": 6
"" "thermstatus, ": 6
"" "vr-therm, ": 6
"(not available)" "(success)": 6
"1" "2": 6
"20m" "40m": 6
"32" "64": 6
"???" "dma write": 6
"active/passive" "passive only": 6
"analog" "digital": 6
"aura" "pool": 6
"beacon" "probe response": 6
"c-vlan" "vlan": 6
"cancelled" "initiated": 6
"capture" "playback": 6
"cc1" "cc2": 6
"decoder" "encoder": 6
"downlink" "uplink": 6
"exmode" "prmode": 6
"found" "lost": 6
"gdt" "ldt": 6
"get" "set": 6
"group" "user": 6
"host" "peripheral": 6
"ipv4" "ipv6": 6
"is" "not": 6
"kill" "on": 6
"ns" "us": 6
"reading" "writing": 6
"recv" "send": 6
" ..." "": 7
" overflow" "": 7
" suspend" "": 7
"" ", nowayout": 7
"" "...": 7
"" "c": 7
"" (#x " "): 7
"" column_sep: 7
"active" "idle": 7
"add" "del": 7
"add" "remove": 7
"autodetected" "insmod option": 7
"capture" "output": 7
"ce" "ue": 7
"dual" "single": 7
"enter" "exit": 7
"fail:" "pass:": 7
"gate" "ungate": 7
"intx" "msi": 7
"private" "shared": 7
"read error" "write error": 7
"read from" "write to": 7
"ro" "rw": 7
kern_debug kern_err: 7
" async" "": 8
" fatal" "": 8
" sof" "": 8
" x16" "": 8
"" "a": 8
"" "b": 8
"10" "100": 8
"40m" "80m": 8
"active" "passive": 8
"bypass" "ram b": 8
"connected" "disconnected": 8
"dcs" "generic": 8
"done" "failed": 8
"dst" "src": 8
"entering" "leaving": 8
"failed" "ok": 8
"failed" "pass": 8
"fast" "slow": 8
"hard" "soft": 8
"invalid" "valid": 8
"kernel" "user": 8
"local" "remote": 8
"primary" "secondary": 8
"ram" "unknown": 8
"restart" "start": 8
"runtime" "system": 8
" err" "": 9
"" "-": 9
"" "/s": 9
"" ": ": 9
"" "[": 9
"" "]": 9
"" "d": 9
"2.4" "5.2": 9
"absent" "present": 9
"fail" "pass": 9
"locked" "unlocked": 9
"offline" "online": 9
"r" "w": 9
"struct" "union": 9
"failed" "success": 53
"" "un": 55
"down" "up": 56
"high" "low": 57
"" "s": 65
"full" "half": 84
"" ",": 86
"not supported" "supported": 91
"" "not ": 96
