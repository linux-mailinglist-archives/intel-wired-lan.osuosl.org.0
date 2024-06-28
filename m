Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBFD91C58F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 20:23:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E522A419CB;
	Fri, 28 Jun 2024 18:23:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NmQV5RjKCKFY; Fri, 28 Jun 2024 18:23:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2778D41E24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719598980;
	bh=oFqBfguFfN8+pBakqdKBQQHnI9GcM2lzxD9fArVrnzg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UTucVH1pLmbhKYXt3Vlcs1kOb2TZDUmY1GjkVPoM65LwOQ0YLR4wNtnL0jHfoA5Br
	 2q7I31wwqtb+Nu3GPa7LBdUqjMri1VA55A5WDU14WisR04+HCAYXI5AX8hWESxzwBf
	 hQpDd3nu387uxo70YqGh6+/EaYQ/oTLEwQBYRAo6Jp0qSgiw7tbkZleCcIBwz5k7Bi
	 6GnrFjQmv4UJtZJvnqaQfMaxO61ykzlOfjgFcJv5I1UpU1BpNKc6XbNOB+/1ap/NyP
	 ZLZzf7BEhAFY9vOPxdVjstJqTFXHV2GDnA+6L1gVDIKiykDS6S+KUV+QvcTsqZc6jJ
	 DdEQBF6ItPmRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2778D41E24;
	Fri, 28 Jun 2024 18:23:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C967A1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 18:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C257A60830
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 18:22:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oc0eGO_mJi3d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 18:22:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 43571607F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43571607F6
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 43571607F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 18:22:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 21235CE0317;
 Fri, 28 Jun 2024 18:22:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED4C2C116B1;
 Fri, 28 Jun 2024 18:22:48 +0000 (UTC)
Date: Fri, 28 Jun 2024 19:22:46 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240628182246.GE837606@kernel.org>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
 <20240618141157.1881093-6-marcin.szycik@linux.intel.com>
 <20240628124409.GD783093@kernel.org>
 <96df3ad4-dd4b-409d-98ed-aa5c6173b579@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96df3ad4-dd4b-409d-98ed-aa5c6173b579@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719598970;
 bh=YqY0ArqSlemTpr7j4nUS+64+FotF5A6qhI6F0pW3zCM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a1hK2y+g0TrD2q2fUP08al4I2RoG/XAWbe9wbjXagmAOzHrHGlB6IozmyjSeDJ9vI
 po8aBor01TP+tojFoCewTBAWFflEI5mFZKJYVuP+NM3dAN7EEsB7gB0BgVWltfmdzl
 vN9Sr9lPGmEzhTXX+T41hQos8+RF17VJOo6HF5sxztvJlpkttXHLKRv0RCQezaHjZ2
 RptHHdENmkbOu1q8SbBNcLJnEGoNvIyebUkbXvOofBVzOCubHF9KCCpak+nf44bk91
 VpLrt4CibmU0N1tlEAgBpgw//PD4uhWu3PTdetz7Ca9gnGgxUFNwFDmekGBPqKZ+m1
 SMV1UbNPWC5XQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=a1hK2y+g
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/6] ice: Optimize switch
 recipe creation
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
Cc: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 28, 2024 at 03:39:27PM +0200, Marcin Szycik wrote:
> 
> 
> On 28.06.2024 14:44, Simon Horman wrote:
> > On Tue, Jun 18, 2024 at 04:11:56PM +0200, Marcin Szycik wrote:
> >> Currently when creating switch recipes, switch ID is always added as the
> >> first word in every recipe. There are only 5 words in a recipe, so one
> >> word is always wasted. This is also true for the last recipe, which stores
> >> result indexes (in case of chain recipes). Therefore the maximum usable
> >> length of a chain recipe is 4 * 4 = 16 words. 4 words in a recipe, 4
> >> recipes that can be chained (using a 5th one for result indexes).
> >>
> >> Current max size chained recipe:
> >> 0: smmmm
> >> 1: smmmm
> >> 2: smmmm
> >> 3: smmmm
> >> 4: srrrr
> >>
> >> Where:
> >> s - switch ID
> >> m - regular match (e.g. ipv4 src addr, udp dst port, etc.)
> >> r - result index
> >>
> >> Switch ID does not actually need to be present in every recipe, only in one
> >> of them (in case of chained recipe). This frees up to 8 extra words:
> >> 3 from recipes in the middle (because first recipe still needs to have
> >> switch ID), and 5 from one extra recipe (because now the last recipe also
> >> does not have switch ID, so it can chain 1 more recipe).
> >>
> >> Max size chained recipe after changes:
> >> 0: smmmm
> >> 1: Mmmmm
> >> 2: Mmmmm
> >> 3: Mmmmm
> >> 4: MMMMM
> >> 5: Rrrrr
> >>
> >> Extra usable words available after this change are highlighted with capital
> >> letters.
> >>
> >> Changing how switch ID is added is not straightforward, because it's not a
> >> regular lookup. Its FV index and mask can't be determined based on protocol
> >> + offset pair read from package and instead need to be added manually.
> >>
> >> Additionally, change how result indexes are added. Currently they are
> >> always inserted in a new recipe at the end. Example for 13 words, (with
> >> above optimization, switch ID being one of the words):
> >> 0: smmmm
> >> 1: mmmmm
> >> 2: mmmxx
> >> 3: rrrxx
> >>
> >> Where:
> >> x - unused word
> >>
> >> In this and some other cases, the result indexes can be moved just after
> >> last matches because there are unused words, saving one recipe. Example
> >> for 13 words after both optimizations:
> >> 0: smmmm
> >> 1: mmmmm
> >> 2: mmmrr
> >>
> >> Note how one less result index is needed in this case, because the last
> >> recipe does not need to "link" to itself.
> >>
> >> There are cases when adding an additional recipe for result indexes cannot
> >> be avoided. In that cases result indexes are all put in the last recipe.
> >> Example for 14 words after both optimizations:
> >> 0: smmmm
> >> 1: mmmmm
> >> 2: mmmmx
> >> 3: rrrxx
> >>
> >> With these two changes, recipes/rules are more space efficient, allowing
> >> more to be created in total.
> >>
> >> Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> >> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > 
> > I appreciate the detailed description above, it is very helpful.
> > After a number of readings of this patch - it is complex -
> > I was unable to find anything wrong. And I do like both the simplification
> > and better hw utilisation that this patch (set) brings.
> > 
> > So from that perspective:
> > 
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > 
> > I would say, however, that it might have been easier to review
> > if somehow this patch was broken up into smaller pieces.
> > I appreciate that, in a sense, that is what the other patches
> > of this series do. But nonetheless... it is complex.
> 
> Yeah... it is a bit of a revolution, and unfortunately I don't think much of
> if could be separated into other patches. Maybe functions like
> fill_recipe_template() and bookkeep_recipe() would be good candidates.
> If there will be another version, I'll try to separate some of it.

Understood. TBH, I couldn't think of a great way to split it either.
