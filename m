Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 070FB2ADF0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Nov 2020 20:06:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 950A08633E;
	Tue, 10 Nov 2020 19:06:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7SwtmEYd-Mos; Tue, 10 Nov 2020 19:06:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B0E93865D0;
	Tue, 10 Nov 2020 19:06:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 014431BF34F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 19:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ED2B285CC7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 19:06:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6wx+JBIIWGWw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Nov 2020 19:06:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3E2FA8633E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 19:06:14 +0000 (UTC)
IronPort-SDR: wLpCeE7+qtgfXwxSAvy8TQnv6RLVOT1qr2k5mPPCHEzoxl9f3JugPruYAgVZjjNQaoAYypLlKZ
 poqLHDBs0twQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="170140713"
X-IronPort-AV: E=Sophos;i="5.77,467,1596524400"; d="scan'208";a="170140713"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 11:06:08 -0800
IronPort-SDR: IaH+HE9t2G22HUKSwkQNrsAy3VYHjiHjXMp84LqTsXtIfg056+X2yVvSGJ8dXpBXHYsHzqFGD0
 qlf2DwRiH7Bg==
X-IronPort-AV: E=Sophos;i="5.77,467,1596524400"; d="scan'208";a="338816639"
Received: from eevans-mobl1.amr.corp.intel.com (HELO ellie) ([10.212.97.1])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 11:06:07 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Miroslav Lichvar <mlichvar@redhat.com>
In-Reply-To: <20201110180719.GA1559650@localhost>
References: <20201110061019.519589-1-vinicius.gomes@intel.com>
 <20201110061019.519589-4-vinicius.gomes@intel.com>
 <20201110180719.GA1559650@localhost>
Date: Tue, 10 Nov 2020 11:06:07 -0800
Message-ID: <871rh19gm8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: bhelgaas@google.com, linux-pci@vger.kernel.org, andre.guedes@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Miroslav Lichvar <mlichvar@redhat.com> writes:

> On Mon, Nov 09, 2020 at 10:10:19PM -0800, Vinicius Costa Gomes wrote:
>> i225 has support for PCIe PTM, which allows us to implement support
>> for the PTP_SYS_OFFSET_PRECISE ioctl(), implemented in the driver via
>> the getcrosststamp() function.
>
> Would it be possible to provide the PTM measurements with the
> PTP_SYS_OFFSET_EXTENDED ioctl instead of PTP_SYS_OFFSET_PRECISE?

That's a very interesting idea. I am liking it, need to play with it a
bit, though.

The only "annoying" part would be retrieving multiple samples, see
below.

>
> As I understand it, PTM is not cross timestamping. It's basically
> NTP over PCIe, which provides four timestamps with each "dialog". From
> the other constants added to the header file it looks like they could
> all be obtained and then they could be converted to the triplets
> returned by the EXTENDED ioctl.
>
> The main advantage would be that it would provide applications with
> the round trip time, which is important to estimate the maximum error
> in the measurement. As your example phc2sys output shows, with the
> PRECISE ioctl the delay is 0, which is misleading here.

I see your point, in my head the delay being 0 made sense, I took it to
mean that both timestamps were obtained at the same time.

>
> I suspect the estimate would be valid only when the NIC is connected
> directly to the PTM root (PCI root complex). Is it possible to get the
> timestamps or delay from PTM-capable switches on the path between CPU
> and NIC? Also, how frequent can be the PTM dialogs? Could they be
> performed synchronously in the ioctl?

Reading the PTM specs, it could work over PCIe switches (if they also
support PTM).

The NIC I have supports PTM cycles from every ~1ms to ~512ms, and from
my tests it wants to be kept running "in background" always, i.e. set
the cycles to run, and only report the data when necessary. Trying to
only enable the cycles "on demand" was unreliable.

(so for the _EXTENDED case, I would need to accumulate multiple values
in the driver, and report them later, a bit annoying, but not
impossible)

So, no, on my experiments triggering the PTM dialogs and retrieving
information from potentially multiple cycles synchronously with the
ioctl don't seem like it would work.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
