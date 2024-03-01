Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2564F86E6CB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 18:08:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF63061AB7;
	Fri,  1 Mar 2024 17:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSXGoclnOHfB; Fri,  1 Mar 2024 17:08:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12DF561AB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709312924;
	bh=HNMmUne/Yqfu1vvSCIO2TJ01IwsJBexeRJmnJDqOCPs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yO1yk1GCE0v2c9/ZuJGUsskco41R5pcANMEdc66ugDhny2ZC8DYvHR1xVeDrztV6h
	 G+JMX+lDTfs1YpCi/ZadvbrHqVEQvistN73RNiF6wlVs90cVowCUbSPC2M8T6uU0Fp
	 PjgAHFREO596GrzzCa+MgKvay5+Ci6eUe9FHNqa5zcIv39xB5pYAwisLnpwF/vv5VN
	 7OG2LRZH/hwbzUfykfFH5UrpafiUTyXHn3474IPsxd0pUERdrwLbXCPV5n89QtNY0R
	 FoT2wxTnk8EWH3ZUxlmcexDUllRXIISHUGnIyQqv0ESq+H9qH7sZOSL4Fo+Zj7Er+y
	 141gy9uuPEIKg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12DF561AB1;
	Fri,  1 Mar 2024 17:08:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CA6F1BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 17:08:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ECB6A41EF8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 17:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2YZPlG0VW8Jj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 17:08:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4B73B41EE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B73B41EE7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4B73B41EE7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 17:08:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D5FEC60FE8;
 Fri,  1 Mar 2024 17:08:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6D44C433F1;
 Fri,  1 Mar 2024 17:08:37 +0000 (UTC)
Date: Fri, 1 Mar 2024 09:08:36 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20240301090836.185e3b79@kernel.org>
In-Reply-To: <ZeDb8Dr8mBvov9fc@lzaremba-mobl.ger.corp.intel.com>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
 <20240228084745.2c0fef0e@kernel.org> <ZeBMRXUjVSwUHxU-@nanopsycho>
 <20240229072813.5d7614c3@kernel.org>
 <ZeDb8Dr8mBvov9fc@lzaremba-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709312918;
 bh=dQWhTKqicP29reyqSeNu/vMazISZHdnkYuuXEej6Pz4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rHcos0PzRuz4UdjZjyMoX73NdGAjqFbDAr1Jd8vyGXu3BayLGaB7uwICV/c8BU1m9
 agaOQYfKzMN5o71Azn12aXvklX/paZlRt/2ibz8nMsmUNJGsKhgYUqL9tcPirqRsC7
 Zdo/QgNfo9NQYkasAp+Rp8vDyfGLW8Zwqou9ADlOg9lXRvo5Tmrd3eS57IB5YB8Rax
 T6/XOoD4ejiZ4B+rJzWjwVvqRwagMPfj3mKx5lHMAGHqHSOwf3hYLncHHANvCphqba
 D7zEThR8hRDP/CK/5LYHDLJCleFEU+zfBuSjU1FsANZACmVniTpf3q9iMkStOuuMR4
 skExEjJ0Owx2g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rHcos0Pz
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/5] ice: LLDP support for VFs
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>, intel-wired-lan@lists.osuosl.org,
 Pawel Kaminski <pawel.kaminski@intel.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 29 Feb 2024 20:33:04 +0100 Larysa Zaremba wrote:
> > This is an LLDP agent which runs as part of the NIC FW, AFAIU, not about
> > forwarding or filtering.
> > 
> > They already have the priv flag, so best to reuse that. If not possible
> > we can explore options, but as Larysa mentioned herself in the cover
> > letter sysfs is probably low on the preference list :(
> 
> FW agent is disabled NIC-wide, so only PF should be able to set such flag.

Sorry, then I misread. If it's about which VF gets the LLDP traffic
from the _wire_, then I'm with Jiri. It's a basic forwarding problem,
isn't it? Match on EtherType and forward?

> The lazy part of me likes the private flag direction, because just
> replacing sysfs entries with corresponding private flags would make
> patch look better while not changing the implementation much.
> 
> I guess, treating it like a normal eswitch configuration would be
> ideal, but it would not be purely generic, as there is an added level
> of complexity because of FW Agent interactions.
