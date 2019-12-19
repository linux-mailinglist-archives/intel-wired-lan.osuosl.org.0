Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E92D4126649
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2019 17:00:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6945486F9A;
	Thu, 19 Dec 2019 16:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v_hRjPrmWhDa; Thu, 19 Dec 2019 16:00:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9887786F49;
	Thu, 19 Dec 2019 16:00:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 01AD91BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2019 16:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC12D87EDD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2019 16:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JDnkBYGBCyfV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Dec 2019 16:00:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 617DA85ADB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2019 16:00:04 +0000 (UTC)
Received: from [2001:1620:665:0:5795:5b0a:e5d5:5944] (helo=localhost)
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1ihyDR-0001RQ-Vz; Thu, 19 Dec 2019 16:59:54 +0100
Date: Thu, 19 Dec 2019 16:59:53 +0100
From: Daniel Borkmann <daniel@iogearbox.net>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>
Message-ID: <20191219155953.GD4198@linux-9.fritz.box>
References: <20191217162023.16011-1-maximmi@mellanox.com>
 <cfe64691-7a0f-5b8a-d511-ebe742cec3c0@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cfe64691-7a0f-5b8a-d511-ebe742cec3c0@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.101.4/25668/Thu Dec 19 10:55:58 2019)
Subject: Re: [Intel-wired-lan] [PATCH bpf v2 0/4] Fix concurrency issues
 between XSK wakeup and control path using RCU
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 17, 2019 at 06:33:14PM +0100, Bj=F6rn T=F6pel wrote:
> On 2019-12-17 17:20, Maxim Mikityanskiy wrote:
> > This series addresses the issue described in the commit message of the
> > first patch: lack of synchronization between XSK wakeup and destroying
> > the resources used by XSK wakeup. The idea is similar to
> > napi_synchronize. The series contains fixes for the drivers that
> > implement XSK. I haven't tested the changes to Intel's drivers, so,
> > Intel guys, please review them.
> =

> Max, thanks a lot for compiling the series on your vacation!

Applied, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
