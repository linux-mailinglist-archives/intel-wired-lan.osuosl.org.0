Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E40A6529F1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 00:39:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B270E60D96;
	Tue, 20 Dec 2022 23:39:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B270E60D96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671579555;
	bh=gpjYDeuRVG50oAkVBZCrKYbSj8Qu1lAXo76i9LyKSJs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KJ73S71j2nnz63ZkidKCY6Ih4J34OLBbT7ZhkrugdRLGf28TQsObawp7UUE4v7peK
	 jid1jiiiwkgV+IAt4Xu/C2ezeaOy1TdxhJFPK0e38MZL+1wRdt3bCb/47FfanMs/JY
	 xnnk+a7IqFaZbJxjMstfjWQDq7jZQwE02im8+dhulJVOtejH2natuoxsSgfDaxAGih
	 PxTkUov0SxkCcwix83fbaOvG8s5ZNWs1ho0SLVy0ayv7CHq6xwkT6cL9a5zz4EtXuv
	 PJfMfcLe54GQcaGHbg9H14/cZ9nqjKqD+0kYFx8IotsfuE5VyAWrTG+3tLT/pms/kH
	 mIISWYUIq2pUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VWD9CgO3tV-n; Tue, 20 Dec 2022 23:39:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9D93607CA;
	Tue, 20 Dec 2022 23:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9D93607CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C19741BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 23:39:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A772A60A6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 23:39:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A772A60A6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86-Z0I46c7Lr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 23:39:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C13E0607CA
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C13E0607CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 23:39:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 80A6361628;
 Tue, 20 Dec 2022 23:39:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3349C433D2;
 Tue, 20 Dec 2022 23:39:03 +0000 (UTC)
Date: Tue, 20 Dec 2022 15:39:03 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Marek Majtyka <alardam@gmail.com>
Message-ID: <20221220153903.3fb7a54b@kernel.org>
In-Reply-To: <CAAOQfrF963NoMhQUTdGXyzLMdAjHfUmvzvxpOL0A1Cv4NhY97w@mail.gmail.com>
References: <cover.1671462950.git.lorenzo@kernel.org>
 <43c340d440d8a87396198b301c5ffbf5ab56f304.1671462950.git.lorenzo@kernel.org>
 <20221219171321.7a67002b@kernel.org> <Y6F+YJSkI19m/kMv@lore-desk>
 <CAAOQfrF963NoMhQUTdGXyzLMdAjHfUmvzvxpOL0A1Cv4NhY97w@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671579544;
 bh=Pqts0QvvwS19/BeiYhbX1dNE/hndPp0pOtk3LpXTkVY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RNXm66T1rPxCTv2heKoNPSw6u9DAYb2Rc/0Mu7GUXebMJX2mHpBC9xN8ag3g57PYu
 alm/NGg3+KS0kHvu6Ucu0NTSuT5wJZcK2lvMaF75zmgi9cbJvPlverFfDclO+wWvN3
 xPMDmIlJDMcHom4MU43p5i//6ACXGKhJUdBUG66pWj51+3ptLYx/Et/ZMKpCS2IhKi
 MbQbj9Y9zxt8ePcIvnNYjIpeocRb+UKfqAUHTzlqO7PvPdVtODtZeQWa0Sy/N+qjTG
 7YKOHq8u9R09YANjT5Sq9cPuPg7xhOfZpn9ACoHd1yvCcbOeI5qsISulo28Je0jxnn
 2zuf9k1S/P79A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RNXm66T1
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
Cc: mst@redhat.com, simon.horman@corigine.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, vladimir.oltean@nxp.com,
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

On Tue, 20 Dec 2022 23:51:31 +0100 Marek Majtyka wrote:
> Everybody is allowed to make a good use of it. Every improvement is
> highly appreciated. Thanks Lorenzo for taking this over.

IIUC this comment refers to the rtnl -> genl/yaml conversion.
In which case, unless someone objects, I'll take a stab at it 
in an hour or two and push the result out my kernel.org tree ...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
