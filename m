Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F234C3934
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Feb 2022 23:51:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF25A417A8;
	Thu, 24 Feb 2022 22:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jJ0XE_ARhps3; Thu, 24 Feb 2022 22:51:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0BC041793;
	Thu, 24 Feb 2022 22:51:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26AE91C1135
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 22:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1453A41796
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 22:50:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F5kQ2JzWdAGJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Feb 2022 22:50:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44F87417A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 22:50:10 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1nNMw0-000i9m-5Q; Thu, 24 Feb 2022 23:50:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
 (envelope-from <laforge@gnumonks.org>) id 1nNMom-002eeF-7J;
 Thu, 24 Feb 2022 23:42:36 +0100
Date: Thu, 24 Feb 2022 23:42:36 +0100
From: Harald Welte <laforge@gnumonks.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <YhgJ3JYKWtxMSPkQ@nataraja>
References: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
 <20220224185500.18384-4-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220224185500.18384-4-marcin.szycik@linux.intel.com>
X-Mailman-Approved-At: Thu, 24 Feb 2022 22:51:07 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 3/7] gtp: Implement GTP
 echo request
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, davem@davemloft.net, pablo@netfilter.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Wojciech,

thanks again for your revision of the patches.

On Thu, Feb 24, 2022 at 07:54:56PM +0100, Marcin Szycik wrote:
> When GTP echo response is detected, multicast message is
> send to everyone in the gtp_genl_family. Message contains
> GTP version, ms address and peer address.

I think many will perceive this as rather odd, but I think it is the
least bad thing we can do in this situation.

> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Suggested-by: Harald Welte <laforge@gnumonks.org>

Reviewed-by: Harald Welte <laforge@gnumonks.org>

Regards,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
