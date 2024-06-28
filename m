Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 952C691BED3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 14:44:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2855F40241;
	Fri, 28 Jun 2024 12:44:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z_UIp0Of-xDe; Fri, 28 Jun 2024 12:44:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F2FF40211
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719578657;
	bh=czRJ+7Y/kRh6bqILiKphUP6RpRalIeTcmus7AjLSUM0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ulUDOmU5aXw5hXWKiqYmfwMhgF2GskgJc5f/zFUD9/E1Vkb51XqE+RxBdPnGmWNip
	 htuDEwWR9XrtWvb6AKfVM+Yg4p2u+SU83w4E/SKwH3HcE675cfnfRPrUvsV+bgT3AF
	 NDpJ6q9DvfD5qld6ZCCJQQeOYxYku1Cz1Ff/hoF/9c9nSBwDKhKWS1HUrHzaAWLPun
	 2/VY1OEz8K13W2jSKuw1wL8+F+LlK8GLZpIe5tNh4gSgGN3WhIokUce1aPwhYToIkD
	 kd5qBMKPdb8RRRFxX4gy7DZIi9k86pn45lrf5sVYbxgkx3pjmv0FlxYsSyrUB5JRis
	 sKdsLKpiA1aUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F2FF40211;
	Fri, 28 Jun 2024 12:44:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14F2C1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:44:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01E3781221
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:44:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U8KMCIlhF0j6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 12:44:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 226688123F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 226688123F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 226688123F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:44:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 557236216C;
 Fri, 28 Jun 2024 12:44:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7416C116B1;
 Fri, 28 Jun 2024 12:44:11 +0000 (UTC)
Date: Fri, 28 Jun 2024 13:44:09 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240628124409.GD783093@kernel.org>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
 <20240618141157.1881093-6-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618141157.1881093-6-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719578653;
 bh=+VW8sn66gk4SjHZa1n67R6NGG3C5XmNF1JTxUzMam6U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LB1B44hKKXQd6MIxav8vylxxunO2IF634Sjp6vl+0uqRtAtoqanVp34kzVAyoTa7P
 65AHVxyfKdV2P7Ea7NmT7EqHikulF8yrqtaLRvT0J6luOOnWViiC9UQWYtzJWcOb+w
 av62sDh1UY+ujLjAq7kP+ldGdwWvmiGcLaDjZxwVs51zEPNm6VrXvkZXskm9UH1v8e
 +ulBBn/q/kTTa/2llwgTTdOz6waJCKPLqCuPqi3q740bfQRs1m85TX+gKxE9JyMuE2
 UlYR5TMS+Um8s7enz9FV0xR90Ss3/vSN/ozLY/12YtIiMIQMRdhZfrXflViS2u+2wL
 JFwhgD76MDE/g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LB1B44hK
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2024 at 04:11:56PM +0200, Marcin Szycik wrote:
> Currently when creating switch recipes, switch ID is always added as the
> first word in every recipe. There are only 5 words in a recipe, so one
> word is always wasted. This is also true for the last recipe, which stores
> result indexes (in case of chain recipes). Therefore the maximum usable
> length of a chain recipe is 4 * 4 = 16 words. 4 words in a recipe, 4
> recipes that can be chained (using a 5th one for result indexes).
> 
> Current max size chained recipe:
> 0: smmmm
> 1: smmmm
> 2: smmmm
> 3: smmmm
> 4: srrrr
> 
> Where:
> s - switch ID
> m - regular match (e.g. ipv4 src addr, udp dst port, etc.)
> r - result index
> 
> Switch ID does not actually need to be present in every recipe, only in one
> of them (in case of chained recipe). This frees up to 8 extra words:
> 3 from recipes in the middle (because first recipe still needs to have
> switch ID), and 5 from one extra recipe (because now the last recipe also
> does not have switch ID, so it can chain 1 more recipe).
> 
> Max size chained recipe after changes:
> 0: smmmm
> 1: Mmmmm
> 2: Mmmmm
> 3: Mmmmm
> 4: MMMMM
> 5: Rrrrr
> 
> Extra usable words available after this change are highlighted with capital
> letters.
> 
> Changing how switch ID is added is not straightforward, because it's not a
> regular lookup. Its FV index and mask can't be determined based on protocol
> + offset pair read from package and instead need to be added manually.
> 
> Additionally, change how result indexes are added. Currently they are
> always inserted in a new recipe at the end. Example for 13 words, (with
> above optimization, switch ID being one of the words):
> 0: smmmm
> 1: mmmmm
> 2: mmmxx
> 3: rrrxx
> 
> Where:
> x - unused word
> 
> In this and some other cases, the result indexes can be moved just after
> last matches because there are unused words, saving one recipe. Example
> for 13 words after both optimizations:
> 0: smmmm
> 1: mmmmm
> 2: mmmrr
> 
> Note how one less result index is needed in this case, because the last
> recipe does not need to "link" to itself.
> 
> There are cases when adding an additional recipe for result indexes cannot
> be avoided. In that cases result indexes are all put in the last recipe.
> Example for 14 words after both optimizations:
> 0: smmmm
> 1: mmmmm
> 2: mmmmx
> 3: rrrxx
> 
> With these two changes, recipes/rules are more space efficient, allowing
> more to be created in total.
> 
> Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

I appreciate the detailed description above, it is very helpful.
After a number of readings of this patch - it is complex -
I was unable to find anything wrong. And I do like both the simplification
and better hw utilisation that this patch (set) brings.

So from that perspective:

Reviewed-by: Simon Horman <horms@kernel.org>

I would say, however, that it might have been easier to review
if somehow this patch was broken up into smaller pieces.
I appreciate that, in a sense, that is what the other patches
of this series do. But nonetheless... it is complex.

...
