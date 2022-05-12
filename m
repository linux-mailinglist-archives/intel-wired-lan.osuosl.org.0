Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CDC5252F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 18:47:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B210041622;
	Thu, 12 May 2022 16:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ids9yk0K4Wp0; Thu, 12 May 2022 16:47:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5033E4167A;
	Thu, 12 May 2022 16:47:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D78CE1BF282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 16:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4E8682CE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 16:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zX25bCMJWGZ5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 16:47:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8D8A82AB6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 16:47:46 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C49C162014;
 Thu, 12 May 2022 16:47:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EB6DC34100;
 Thu, 12 May 2022 16:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652374065;
 bh=lNnph2yAG9EuWp4xn4hkmL7beGBLq1ZnZACZsxjp9KM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Nbj40Iz88D0V+BmUzUcGlmi2umj/JPseAGp8ve9p9adbnxhMIw5o5HKqqoIgzjAlC
 DeUV2ehaeFQOlKrd7fd7Y924wISPgj2/8F5tR6bUc4uWovrrSf9hBp82erK2Jc4pc3
 A4dvpcTJPE43CwXIJjA1f53t9Qmg/baB3Xz3eECBLToqkBjUwQtS+/U8lrFmzS9ZJF
 xFo9qPHnCW8oDT4cJt7i1K/uVJr3VfpJM1NVURE1DALzcdaqRWCOMKFmXZ2JhDLCCA
 jGdWnL/FQw+dFHr7np3Ga08IwoHGfZt8RyzjJwGfQHb8dVidzC4m5NOHQJ45+fOx4b
 IhinxXtkEOXFQ==
Date: Thu, 12 May 2022 09:47:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>
Message-ID: <20220512094743.79f36d81@kernel.org>
In-Reply-To: <c5ec2677-3047-8a70-9769-d48a79703220@nvidia.com>
References: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
 <c6069fb695b25dc2f33e8017023ddd47c58caa8d.1652348962.git.eng.alaamohamedsoliman.am@gmail.com>
 <c5ec2677-3047-8a70-9769-d48a79703220@nvidia.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 2/2] net: vxlan: Add
 extack support to vxlan_fdb_delete
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
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 UNGLinuxDriver@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 12 May 2022 09:22:17 -0700 Roopa Prabhu wrote:
> On 5/12/22 02:55, Alaa Mohamed wrote:
> > This patch adds extack msg support to vxlan_fdb_delete and vxlan_fdb_parse.
> > extack is used to propagate meaningful error msgs to the user of vxlan
> > fdb netlink api
> >
> > Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>

Also the patches don't apply to net-next, again.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
