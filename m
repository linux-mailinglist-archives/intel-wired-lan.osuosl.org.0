Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA81652C20
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 05:41:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BD88417D1;
	Wed, 21 Dec 2022 04:41:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BD88417D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671597673;
	bh=vpEutYLtGvj1peV4xXeKzJd89vGnPUXkfEIqzarQ+GU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fSN30cpgLE0A5N/9cUrAnt2bTwFV2W5rYIghfCXkfyqN9HRXOOq9RsSERrjUG+gGB
	 Y5+7xrxbI039WG94y63C28TltK6Vdtj96iJRp7DmWdZJkB+nG+aZdugLFjCJON8638
	 bu6URkeGI7vd1rfRQjF5WPjMkSrrMSUJ3W2Q7C3QAeSIk+nVaJ1fIFKZF2qs+KPhMX
	 EJDawGXZ1DHqFWVcJXYwShE9ZwK+IflyH1mb12Is7+Ms9RaobiSaYnB9xRUMGhIc2A
	 LMrnHdv3iRVuQ8HO9GuCUmEVTpNvvSpGnEIFgaKgCFWKwOC0c3Tp/2Tq4EcKSwGHh4
	 M+nMXVdOaa8OA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id muo9qXBX7cU4; Wed, 21 Dec 2022 04:41:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 759674155F;
	Wed, 21 Dec 2022 04:41:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 759674155F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04DF01BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 04:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D289F61006
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 04:41:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D289F61006
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L2l1N7maeBDT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 04:41:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A35CE60AE4
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A35CE60AE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 04:41:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 74B9F615E3;
 Wed, 21 Dec 2022 04:41:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD2D0C433D2;
 Wed, 21 Dec 2022 04:41:03 +0000 (UTC)
Date: Tue, 20 Dec 2022 20:41:02 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Marek Majtyka <alardam@gmail.com>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Message-ID: <20221220204102.5e516196@kernel.org>
In-Reply-To: <20221220153903.3fb7a54b@kernel.org>
References: <cover.1671462950.git.lorenzo@kernel.org>
 <43c340d440d8a87396198b301c5ffbf5ab56f304.1671462950.git.lorenzo@kernel.org>
 <20221219171321.7a67002b@kernel.org> <Y6F+YJSkI19m/kMv@lore-desk>
 <CAAOQfrF963NoMhQUTdGXyzLMdAjHfUmvzvxpOL0A1Cv4NhY97w@mail.gmail.com>
 <20221220153903.3fb7a54b@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671597664;
 bh=wSFQUgGJzXV6d5gMKnkYoaOMkAFlJRLD40jAU2lzBgU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZTCajLEr95mk1dWWzJXkTGmclB8AP4Zp2iWzv3qqntF4IvSFPWU2u7Jv2+FAfjq3Z
 MUyjmRfJofbtS8XOGhBuSyuxLeSH7CNbjePGL74xNqiFanX7HoG6pk9kYKpPCsByrN
 EAaXCSfqLTZGSt2RrqE4zj6KOiky4ibeAx+itHxrNhXODSZ0vWYNCHAm9ROLTVF5Kn
 ARbP74GOV/K0ufsNySJsmafg/tk3BrUJGKI9+VETAw1pAsXNeRP9/M2j7Ei/x9dY6o
 kNLzDSXsxKro9YUINkN8yiSVnTmVtgsFVeTdkeM1XuDEORsmSi1NIAsgrj+fzT/hg3
 AmW1FFr+sZatw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZTCajLEr
Subject: Re: [Intel-wired-lan] [RFC bpf-next 2/8] net: introduce XDP
 features flag
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 grygorii.strashko@ti.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, ecree.xilinx@gmail.com,
 bjorn@kernel.org, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 20 Dec 2022 15:39:03 -0800 Jakub Kicinski wrote:
> On Tue, 20 Dec 2022 23:51:31 +0100 Marek Majtyka wrote:
> > Everybody is allowed to make a good use of it. Every improvement is
> > highly appreciated. Thanks Lorenzo for taking this over.  
> 
> IIUC this comment refers to the rtnl -> genl/yaml conversion.
> In which case, unless someone objects, I'll take a stab at it 
> in an hour or two and push the result out my kernel.org tree ...

I pushed something here:

https://github.com/kuba-moo/ynl/commits/xdp-features

without replacing all you have. But it should give enough of an idea 
to comment on.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
