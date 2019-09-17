Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB993B5595
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Sep 2019 20:47:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4DE42204CD;
	Tue, 17 Sep 2019 18:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ZuM9mc3Dxx4; Tue, 17 Sep 2019 18:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D1BF92050B;
	Tue, 17 Sep 2019 18:47:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8AAEF1BF429
 for <intel-wired-lan@osuosl.org>; Tue, 17 Sep 2019 18:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8505C8733B
 for <intel-wired-lan@osuosl.org>; Tue, 17 Sep 2019 18:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qb-5QE0YkD1C for <intel-wired-lan@osuosl.org>;
 Tue, 17 Sep 2019 18:47:25 +0000 (UTC)
X-Greylist: delayed 00:09:05 by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CBBC5872E8
 for <intel-wired-lan@osuosl.org>; Tue, 17 Sep 2019 18:47:25 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 4D456460FA0; Tue, 17 Sep 2019 14:38:16 -0400 (EDT)
Date: Tue, 17 Sep 2019 14:38:16 -0400
To: Jakub Jankowski <shasta@toxcorp.com>
Message-ID: <20190917183815.7xhzmwaw4hy63pmp@csclub.uwaterloo.ca>
References: <20190610190141.77k6gbrefm2mr6lb@csclub.uwaterloo.ca>
 <77e940d7-552b-7724-0971-828bdb28add7@toxcorp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77e940d7-552b-7724-0971-828bdb28add7@toxcorp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Subject: Re: [Intel-wired-lan] [E1000-devel] i40e X722 RSS problem with
 NAT-Traversal IPsec packets
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
Cc: e1000-devel@lists.sourceforge.net, intel-wired-lan@osuosl.org,
 rschwammberger@open-systems.com, alexander.h.duyck@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 12, 2019 at 12:09:09PM +0200, Jakub Jankowski wrote:
> Was there any progress here?
> 
> As X722 is getting more and more ubiquitous, it's getting harder and harder
> to avoid it. Problems like this, SFP EEPROM readout I reported [1], or the
> recently announced NetCAT issue [2] (X722 seems to support iWARP/RDMA) make
> it really hard to recommend X722 for production use.
> 
> [1]
> https://www.mail-archive.com/e1000-devel@lists.sourceforge.net/msg12550.html
> [2] https://www.vusec.net/projects/netcat/

I haven't seen any update on it.  Still waiting.  I tried to install a
new firmware version, but it claims there is no update to install (same
thing happened with a prior firmware where the new version had the same
version ID as the previous version so the update tool thought there was
nothing to do, and I have a suspicion the same thing happened again).
Not that the firmware updates ever include release notes on what fixes
are included in the update of course, so no idea if it would help.

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
