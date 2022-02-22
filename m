Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E89A24C037F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Feb 2022 22:05:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E7AB4099E;
	Tue, 22 Feb 2022 21:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3nn_O6TdNTiZ; Tue, 22 Feb 2022 21:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7688D40309;
	Tue, 22 Feb 2022 21:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EDA241BF33C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 20:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA95960767
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 20:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6cxqvDWHJsrE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Feb 2022 20:50:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C960F6064D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 20:50:13 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1nMc6m-00FSXz-BE; Tue, 22 Feb 2022 21:50:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
 (envelope-from <laforge@gnumonks.org>) id 1nMbxD-0024TY-TA;
 Tue, 22 Feb 2022 21:40:11 +0100
Date: Tue, 22 Feb 2022 21:40:11 +0100
From: Harald Welte <laforge@gnumonks.org>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <YhVKK16JRo3THp7h@nataraja>
References: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
 <20220221101425.19776-4-marcin.szycik@linux.intel.com>
 <YhSDfvQoNDyoAaV9@nataraja>
 <MW4PR11MB5776AA2256C00293FAC07C16FD3B9@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW4PR11MB5776AA2256C00293FAC07C16FD3B9@MW4PR11MB5776.namprd11.prod.outlook.com>
X-Mailman-Approved-At: Tue, 22 Feb 2022 21:05:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 3/7] gtp: Implement GTP
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "pablo@netfilter.org" <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Wojciech,

On Tue, Feb 22, 2022 at 09:38:08AM +0000, Drewek, Wojciech wrote:

> > I think either the Tx and the Rx ard triggered by / notified to userspace,
> > or you would also do periodic triggering of Tx in the kernel autonomously,
> > and process the responses.  But at that point then you also need to think
> > about further consequences, such as counting the number of missed ECHO RESP,
> > and then notify userspace if that condition "N out of M last responses missed".
> > 
> 
> I thought that with the GTP device created from ip link, userspace
> would be unable to receive Echo Response (similar to Echo Request).
> If it's not the case than I will get rid of handling Echo Response in the
> next version.

Well, userspace cannot 'receive' the ECHO response through the UDP socket as
the UDP socket is hidden in the kernel.  I was thinking of the same mechanism
you introduce for transmit:  You can trigger the Tx of GTP ECHO REQ via netlink,
so why shouldn't you receive a notifiation about its completion also via netlink?

Just don't think of it as sending an ECHO REQ via netlink, but triggering the tx
and acknowledging the completion/reception of a related response.

One of the advantages of the existing mechanism via 'socket is held in userspace'
is that we don't have to jump through any such hoops or invent strange interfaces:
The process can just send and receive the messages as usual via UDP socket related
syscalls.

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
