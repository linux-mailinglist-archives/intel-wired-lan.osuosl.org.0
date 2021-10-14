Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C154542E2B6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Oct 2021 22:25:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BA8F83183;
	Thu, 14 Oct 2021 20:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FAGu3shdcC4e; Thu, 14 Oct 2021 20:25:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45F9583187;
	Thu, 14 Oct 2021 20:25:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E77581BF599
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 20:25:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D50FD40591
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 20:25:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YPa_2SDyxVlE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Oct 2021 20:25:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from kanga.kvack.org (kanga.kvack.org [205.233.56.17])
 by smtp4.osuosl.org (Postfix) with ESMTP id E85CE40554
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 20:25:13 +0000 (UTC)
Received: by kanga.kvack.org (Postfix, from userid 63042)
 id AC85D900002; Thu, 14 Oct 2021 16:25:12 -0400 (EDT)
Date: Thu, 14 Oct 2021 16:25:12 -0400
From: Benjamin LaHaise <bcrl@kvack.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20211014202512.GD30927@kvack.org>
References: <20211011222800.GA17234@kvack.org>
 <55127ee0-e85c-9dba-4086-31516a843d27@intel.com>
 <6bb0f7d2-1d25-0d0a-7141-ebd277082994@intel.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6bb0f7d2-1d25-0d0a-7141-ebd277082994@intel.com>
User-Agent: Mutt/1.4.2.2i
Subject: Re: [Intel-wired-lan] i40e pppoe rss
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jesse,

On Thu, Oct 14, 2021 at 12:52:17PM -0700, Jesse Brandeburg wrote:
> On 10/12/2021 12:28 PM, Jesse Brandeburg wrote:
> >Please keep an eye out for the intel.com download page to be updated 
> >with the latest PPPoE package. Once you have that, RSS should start 
> >working correctly after loading the newer package.
> >
> >Thanks for your patience, I don't have a direct ETA on this, but I did 
> >start the ball rolling internally.
> 
> The latest package has been uploaded, feedback is appreciated.
> https://downloadcenter.intel.com/download/28040

It looks like this works for UDP, which is good.  All ICMP packets
seem to end up on the same rx queue regardless of source or destination ip
address which is not ideal.  I'll run a few more tests, but this is
definitely better than it was.  Thanks!

		-ben
-- 
"Thought is the essence of where you are now."
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
