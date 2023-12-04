Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807C380410B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 22:41:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B0D440201;
	Mon,  4 Dec 2023 21:41:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B0D440201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701726096;
	bh=By8Tj6WKRwvfaWdhazhfUQTM6h3Lsk/Xnca4kCVK5p4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kh3g/3fxl5pAQ7O9uhYyvciigwpUKrw5NCaF9n45cL76aNGJ8UQoAe3nh2ymFI2i0
	 Jc1n0nsMswmq0W90GQ4WJmi7rFQ3+0wX3a2y98FrjXTpYHGUgqbVtG93Dau6ZWDZvp
	 7/f4p1abv+CeIUPxxcQbQrDu3iC8+xNgz61vBhd2zc7ysP6e/HkCfENNKpKbopWh0w
	 91ogfA/L+DO1qUhA83BBrtjl54iA7aQjjbq/vArQ6H8CqBXk06x0tFk0JBMKu1emkO
	 ga7Qkpxo/pcFTDgR4XleIcjYBHAFt7qicAjy3HbwJXrkWG7Qp/ReRyobWhI8Oa1a/b
	 S1oU8tjj8eJVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46uoixUXtiAN; Mon,  4 Dec 2023 21:41:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 846CF40151;
	Mon,  4 Dec 2023 21:41:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 846CF40151
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E4771BF30E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 21:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA80841793
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 21:28:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA80841793
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QGwoVATAep4b for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 21:28:54 +0000 (UTC)
Received: from mail1.merlins.org (magic.merlins.org [209.81.13.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11FD44176D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 21:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11FD44176D
Received: from merlin by mail1.merlins.org with local (Exim 4.94.2 #2)
 id 1rAGUj-0001wP-VU by authid <merlin>; Mon, 04 Dec 2023 13:28:49 -0800
Date: Mon, 4 Dec 2023 13:28:49 -0800
From: Marc MERLIN <marc@merlins.org>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20231204212849.GA25864@merlins.org>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231204200038.GA9330@merlins.org>
 <a6ac887f7ce8af0235558752d0c781b817f1795a.camel@sipsolutions.net>
 <20231204203622.GB9330@merlins.org>
 <24577c9b8b4d398fe34bd756354c33b80cf67720.camel@sipsolutions.net>
 <20231204205439.GA32680@merlins.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231204205439.GA32680@merlins.org>
X-Sysadmin: BOFH
X-URL: http://marc.merlins.org/
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: marc@merlins.org
X-Mailman-Approved-At: Mon, 04 Dec 2023 21:41:23 +0000
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 04, 2023 at 12:54:39PM -0800, Marc MERLIN wrote:
> On Mon, Dec 04, 2023 at 09:40:08PM +0100, Johannes Berg wrote:
> > This one's still the problem, so I guess my 2-line hack didn't do
> > anything.
> 
> sorry, I wasn't clear, this was the last hang before your patch. I
> wanted to make sure it matched your analysis, which it seems to, so
> that's good.  I now understand that the order in printk is not actually
> the order of who is at fault.
> I'm testing your patch now, will let you know ASAP

Well. Good news. So far so good.

sauron:~# ethtool -i enp11s0
driver: igc
version: 6.6.4-amd64-volpre-sysrq-202312
firmware-version: 1073:8754
expansion-rom-version: 
bus-info: 0000:0b:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

sauron:~# iwconfig wlp9s0
wlp9s0    IEEE 802.11  ESSID:"magicnet"  
          Mode:Managed  Frequency:5.2 GHz  Access Point: E0:63:DA:28:03:67   
          Bit Rate=866.7 Mb/s   Tx-Power=22 dBm   
          Retry short limit:7   RTS thr:off   Fragment thr:off
          Encryption key:off
          Power Management:off
          Link Quality=70/70  Signal level=-40 dBm  
          Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
          Tx excessive retries:0  Invalid misc:992   Missed beacon:0

sauron:~# lspci | grep -i net
09:00.0 Network controller: Intel Corporation Wi-Fi 6 AX210/AX211/AX411 160MHz (rev 1a)
0b:00.0 Ethernet controller: Intel Corporation Ethernet Controller I225-LM (rev 03)

It's unfortunate that nouveau doesn't seem to support the nvidia chip at all, not even
well enough to turn it off, but thankfully I can do this via
  echo 'auto' > '/sys/bus/pci/devices/0000:01:00.0/power/control'

For power, I was able to get it to idle at 13W with tlp powering down chips to slow
speeds, and the screen fairly dim. It's not great but it's cmoparable to the P73, so
close enough.

The weird PME loops I attached in the last Email would also butn batteries on my P73
without hanging it. Your patch may have fixed that too. If so, thank you
(will report if I see the PME stuff again).

Either way, I'm in much better shape right now on a laptop I was about
to return after having spent 3 days of effort on it, so a heartfelt thank you!

Where do you we go from here? Is the patch obviously good/safe, or do we
need to narrow things down/test some more?

Marc
-- 
"A mouse is a device used to point at the xterm you want to type in" - A.S.R.
 
Home page: http://marc.merlins.org/  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
