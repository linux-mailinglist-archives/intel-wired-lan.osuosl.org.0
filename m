Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A0A4C3932
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Feb 2022 23:51:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F18E417C3;
	Thu, 24 Feb 2022 22:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9U-YT1MokPoY; Thu, 24 Feb 2022 22:51:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 382FA4179E;
	Thu, 24 Feb 2022 22:51:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E73B1BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 22:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EECB76120E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 22:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W16ruU0srk1y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Feb 2022 22:50:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8754E6120D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 22:50:10 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1nNMw0-000i9o-8z; Thu, 24 Feb 2022 23:50:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
 (envelope-from <laforge@gnumonks.org>) id 1nNMqJ-002eeV-KK;
 Thu, 24 Feb 2022 23:44:11 +0100
Date: Thu, 24 Feb 2022 23:44:11 +0100
From: Harald Welte <laforge@gnumonks.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <YhgKO8rdxMxclZPm@nataraja>
References: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
X-Mailman-Approved-At: Thu, 24 Feb 2022 22:51:07 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 0/7] ice: GTP support in
 switchdev
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

Hi Marcin,

On Thu, Feb 24, 2022 at 07:54:53PM +0100, Marcin Szycik wrote:
> Add support for adding GTP-C and GTP-U filters in switchdev mode.

For the changes to the gtp.ko driver this v9 looks fine to me.  I cannot
comment about the switchdevs bits, those are beyond my expertise.

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
