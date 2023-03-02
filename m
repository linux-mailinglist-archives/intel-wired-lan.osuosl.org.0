Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E16C6A864A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Mar 2023 17:24:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79DF4820B5;
	Thu,  2 Mar 2023 16:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79DF4820B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677774274;
	bh=cMOdSzPQ+uv/uEzzXGQhJCSPKEzYXq5OeOBv3/pE9Xo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bEKJdHychyvSeqIgxqmHAumB34zMfLTzofsyL8nji6VpybXa71lv+EEbNAIwWuQ8J
	 wNMdpGTgYvv0NL9zPDR/O8i3G1pFO5MnX4UytpFN9yVe2ho/oyE/+MX4LmRfAaxa66
	 4lDaf42M6X0pdHWUCEM+AoUrx9NkMZi76Dp254C70HxWtjsjCRdJILkxlsK6MUiB3D
	 x2Gw6A7JcoBdAsAIjiimibuUyxl3qssqYOAb6ls1+j69uWLQno/LN0BtAaIBmccLin
	 KkFm3NuaFYPx+aWbboloA/aniDe9xFGSbs3KGyCowuLOdh4B6zeFVaL6NRQ8+DkRc6
	 RkDSCrLV0OrbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVdOEXvoIaFO; Thu,  2 Mar 2023 16:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C8AB81EDD;
	Thu,  2 Mar 2023 16:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C8AB81EDD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA73C1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 12:38:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B794540CB0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 12:38:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B794540CB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ARe5fjCgCPx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Mar 2023 12:38:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20E30400F6
Received: from sosiego.soundray.org (sosiego.soundray.org [116.203.207.114])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 20E30400F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 12:38:23 +0000 (UTC)
From: Linus Heckemann <git@sphalerite.org>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
In-Reply-To: <MW5PR11MB5811C3D002B5A5FB3A8806F4DDA89@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230215191757.1826508-1-david.m.ertman@intel.com>
 <ygay1oxikvo.fsf@localhost>
 <MW5PR11MB5811C3D002B5A5FB3A8806F4DDA89@MW5PR11MB5811.namprd11.prod.outlook.com>
Date: Thu, 02 Mar 2023 13:38:14 +0100
Message-ID: <ygattz3tjk9.fsf@localhost>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 02 Mar 2023 16:24:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sphalerite.org; s=sosiego; t=1677760696;
 bh=f15Twj69E0mZwYKKYwmVetWbSyygrlvDq/ffVHKHTEY=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date;
 b=DjSTfv3gEOKj7jNqmcDnfRevjAU/aEf7rgWpjtveyZ93hkRVtmDOnJYodUxHn+v63
 XDCeW6LIf1Ld6TURJJGNY7d9k0OOKpOniF3mqFlAUKKj6WhS3UDSfnZjvlUoSM7lIH
 Dp1l1yEy5CvuFWUD440pDMq1tQRF25yAzPJm1/rg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=sphalerite.org header.i=@sphalerite.org
 header.a=rsa-sha256 header.s=sosiego header.b=DjSTfv3g
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"Ertman, David M" <david.m.ertman@intel.com> writes:

>> -----Original Message-----
>> From: Linus Heckemann <git@sphalerite.org>
>> Sent: Thursday, February 16, 2023 9:24 AM
>> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
>> lan@lists.osuosl.org
>> Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
>> Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
>> auxiliary plug/unplug under RTNL lock
>> 
>> Dave Ertman <david.m.ertman@intel.com> writes:
>> > RDMA is not supported in ice on a PF that has been added to a bonded
>> > interface. To enforce this, when an interface enters a bond, we unplug
>> > the auxiliary device that supports RDMA functionality.  This unplug
>> > currently happens in the context of handling the netdev bonding event.
>> > This event is sent to the ice driver under RTNL context.  This is causing
>> > a deadlock where the RDMA driver is waiting for the RTNL lock to complete
>> > the removal.
>> >
>> > Defer the unplugging/re-plugging of the auxiliary device to the service
>> > task so that it is not performed under the RTNL lock context.
>> >
>> > Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
>> > Link: https://lore.kernel.org/linux-rdma/68b14b11-d0c7-65c9-4eeb-
>> 0487c95e395d@leemhuis.info/
>> > Fixes: 5cb1ebdbc434 ("ice: Fix race condition during interface enslave")
>> > Fixes: 425c9bd06b7a ("RDMA/irdma: Report the correct link speed")
>> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
>> > ---
>> > Changes since v1:
>> > Reversed order of bit processing in ice_service_task for PLUG/UNPLUG
>> 
>> Hi Dave,
>> 
>> Thanks for your continued work on this! We've tested this on a system
>> affected by the original issue (with 8086:1593 cards) and, unlike v1 of
>> the patch, it appears not to resolve it:
>
> Hi Linus,
>
> This error confuses me.  The only difference between v1 and v2 of this patch
> is the order in which we process state bits in the service task thread.  They are
> still being processed outside of RTNL context.
>
> Can you provide the steps you used to reproduce this issue? 
>
> Thanks,
> DaveE

Hi Dave,

It confuses me as well!

Like before, this was reproduced by booting a system configured to bond
the interfaces provided by two of the cards (using systemd-networkd,
relevant config below). The failure occurred less frequently than prior
to applying the patch, but still enough to be quite an annoyance!

According to the provider, the machine's card was on an older firmware
(3.00 0x8000893f 20.5.13), and upgrading to the latest available version
resolved this issue for our purposes. Nevertheless, I think the kernel
shouldn't be deadlock on the RTNL lock regardless of which firmware
version is running. If there's any more information that would be
helpful for debugging, let us know -- though we can't get at machines
running the old firmware trivially, so it's hard for us to reproduce at
this point.

As mentioned, upgrading the firmware has resolved the problem for us,
though it certainly feels unsatisfying to leave the bug there. I have no
strong opinion on whether the patch should be included as is
anyway. Maybe the firmware version info is enough to help you reproduce
the problem?

Linus


________
/etc/systemd/network/10-bond0.netdev:
[NetDev]
Kind=bond
Name=bond0

[Bond]
DownDelaySec=0.200000
LACPTransmitRate=fast
MIIMonitorSec=0.100000
Mode=802.3ad
TransmitHashPolicy=layer3+4
UpDelaySec=0.200000

________
/etc/systemd/network/40-bond0.network:
[Match]
Name=bond0

[Link]
#MACAddress=<omitted>
RequiredForOnline=carrier

[Network]
LinkLocalAddressing=no

# some Address and Route sections omitted
________
/etc/systemd/network/30-eno12419.network:
[Match]
Name=eno12419

[Network]
Bond=bond0

________
/etc/systemd/network/30-eno12399.network:
[Match]
Name=eno12399

[Network]
Bond=bond0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
