Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FC854BF32
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jun 2022 03:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9907F60F9E;
	Wed, 15 Jun 2022 01:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L0CX2m640yA8; Wed, 15 Jun 2022 01:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9782360ABE;
	Wed, 15 Jun 2022 01:19:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE4E11BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 01:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D98B782F4A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 01:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01YfgnrMWU4X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jun 2022 01:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D3D983103
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 01:19:17 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 18EE16197F;
 Wed, 15 Jun 2022 01:19:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 264C6C3411B;
 Wed, 15 Jun 2022 01:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655255955;
 bh=cqUQldzwMNHn/e5eAgc2b9bv7+EGUVT/AaVRUjmyG5M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lQmlLU0ZUUCqtBKy7IMfVBk0cuNMMDwMl30O18ZYA4NsMdw5UyYAxay2H4RnV/vIf
 1X/xyBgOEch7EV9zQveuJkkLIcBagXJN1V3h5dnnCRQ6+g8hQPLZwiOclSdYerF91Q
 46DwvYdXoiBz1YlNmLDZbeBW4wugYR6cdPyEvMHlFSN+zKYZ+mlfqBy982+MWmmzMX
 wLDvK6ySwr9LGo7Fpxz+ER0f7gb88R2iaxJeJanu1b23zCLdvoZzq9zAUcNzCt3OEm
 LBTksV+cqPYio4cU4XDOiiq+q3vFN/WMfy3FiZuaBxgX/zOXA6tqh5eaeIJ3TUBDgh
 5X7zVw54lCAJQ==
Date: Tue, 14 Jun 2022 18:19:14 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20220614181914.4cd8fe97@kernel.org>
In-Reply-To: <cbfb5d1a-dadd-efe5-b5d9-de9f483e44b2@intel.com>
References: <20220610023922.74892-1-lianglixuehao@126.com>
 <cbfb5d1a-dadd-efe5-b5d9-de9f483e44b2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v6] igb: Assign random MAC address
 instead of fail in case of invalid one
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
Cc: pmenzel@molgen.mpg.de, lianglixue@greatwall.com.cn, netdev@vger.kernel.org,
 Lixue Liang <lianglixuehao@126.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 14 Jun 2022 12:09:02 -0700 Tony Nguyen wrote:
> > Add the module parameter "allow_invalid_mac_address" to control the  
> 
> netdev maintainers:
> 
> I know the use of module parameters is extremely frowned upon. Is this a 
> use/exception that would be allowed?

I think so, I don't see a different way here.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
