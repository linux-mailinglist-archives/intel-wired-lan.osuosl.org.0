Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40593A632F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2019 09:56:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C35C420487;
	Tue,  3 Sep 2019 07:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pHZBthWWqmpF; Tue,  3 Sep 2019 07:56:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E1A8226EA;
	Tue,  3 Sep 2019 07:56:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FECA1BF332
 for <intel-wired-lan@osuosl.org>; Tue,  3 Sep 2019 07:56:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0B5A982063
 for <intel-wired-lan@osuosl.org>; Tue,  3 Sep 2019 07:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7EPvBnYs7fZ4 for <intel-wired-lan@osuosl.org>;
 Tue,  3 Sep 2019 07:56:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from geminitest.hmdnsgroup.com (geminitest.hmdnsgroup.com
 [63.247.140.108])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9FF2882028
 for <intel-wired-lan@osuosl.org>; Tue,  3 Sep 2019 07:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=mirality.co.nz; s=default; h=Message-ID:References:In-Reply-To:Subject:Cc:
 To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DSIJxzdTHNNdriyayR8n5trlgflVWRlsc/ZWB+TwLI8=; b=le82P3J7Ej29543fcV4l1NkCh5
 GlEGNaQp1KPqbSSwhNMkRvC433qwbTaFNHmDfz/W6hLemjjsgCHLUbzLfKNdxKtWfiLLUvmpa7Dsz
 m2KzbqBAFwXDmrJ8UZpfXaW0Vw/GsRKLRQ/NMIpqNnqVEG8SwPFcdtjooPHnH2oxZKz/8FNOJWJc+
 w6nfNzfcDaVYYuGu5WJXurUodIaSOfAHx9zk9APoGqHllmwX7Krcq0DOCbKV5FCjtfY1aeYf/8Nav
 +PLMep/ODfpcxKiz1/bbMBfGK5U0fnC5ilQ/kzjYrQckjb3EZIjRSP2wjQZNRS2pc/ayNsFREPdrk
 kEDXrAjw==;
Received: from [::1] (port=51944 helo=mirality.co.nz)
 by gemini.hmdnsgroup.com with esmtpa (Exim 4.87)
 (envelope-from <intel@mirality.co.nz>)
 id 1i53fv-0007MR-1d; Tue, 03 Sep 2019 03:56:27 -0400
MIME-Version: 1.0
Date: Tue, 03 Sep 2019 19:56:26 +1200
From: Gavin Lambert <intel@mirality.co.nz>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>, Tomas Winkler <tomas.winkler@intel.com>
In-Reply-To: <f6b7b539ece1ba352c60c6dc976a3ce2@mirality.co.nz>
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
 <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
 <000661bda5687541e895a949c76712fb@mirality.co.nz>
 <d3118220-e599-44cd-5ed6-43259c5fc2c2@intel.com>
 <3a63201c552a9cb6a9737fec92bc1264@mirality.co.nz>
 <f4a18bf808e6f30e9691e127722f851b@mirality.co.nz>
 <f6b7b539ece1ba352c60c6dc976a3ce2@mirality.co.nz>
Message-ID: <0300439f389950a9f9baaaaf5e3ea697@mirality.co.nz>
X-Sender: intel@mirality.co.nz
User-Agent: Roundcube Webmail/1.1.4
X-HMDNSGroup-MailScanner-Information: Please contact the ISP for more
 information
X-HMDNSGroup-MailScanner-ID: 1i53fv-0007MR-1d
X-HMDNSGroup-MailScanner: Found to be clean
X-HMDNSGroup-MailScanner-SpamCheck: 
X-HMDNSGroup-MailScanner-From: intel@mirality.co.nz
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gemini.hmdnsgroup.com
X-AntiAbuse: Original Domain - osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - mirality.co.nz
X-Get-Message-Sender-Via: gemini.hmdnsgroup.com: authenticated_id:
 uecasm/from_h
X-Authenticated-Sender: gemini.hmdnsgroup.com: intel@mirality.co.nz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Intel-wired-lan] [e1000e] Linux 4.9: unable to send packets
 after link recovery with patched driver
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-08-20 14:15, I wrote:
> Does anyone have any ideas about this?  Either towards further
> investigation or to a possible resolution?
> 
> This is at the point of hardware internals now, so I have no idea how
> to proceed in either area.

To recap (plus some new info):

1. I am using a kernel module which uses the code from the e1000e driver 
to communicate with the hardware without actually registering it as a 
Linux netdev.  (This is partly because it can get used in a Xenomai 
context outside of Linux itself, although I'm not doing that myself.)  
This historically works fine.

2. On certain Linux versions, I encountered an issue where disconnecting 
the network cable and reconnecting it almost always results in not being 
able to send any packets.  (I cannot determine if receiving packets 
works in this case, as the network design will not receive packets 
unless some are sent first.)  Restarting the driver (rmmod+modprobe) 
does recover from this case (until the next link loss), but simply 
replugging the cable never does.

3. The problem was observed with both I219-V and I219-LM (on 
motherboard), but was *not* observed with 82571EB (PCIE).  The problem 
was not observed with a motherboard igb-based I211.  I suspect the issue 
is limited to motherboard-based e1000e adapters.  (Or perhaps there's 
something different about how the IGBs are internally connected.)

4. The problem does not occur when the e1000e driver is registered 
"normally" as a Linux netdev.

5. The problem was introduced by "mei: me: allow runtime pm for platform 
with D0i3" (which has been backported to 4.4+, as far as I can tell).  
Excluding this commit reliably resolves the issue and including it 
reliably breaks it.

6. Applying the previously suggested patch 
https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/commit/drivers/net/ethernet/intel/e1000e?id=def4ec6dce393e2136b62a05712f35a7fa5f5e56 
has no effect; the E1000_STATUS_PCIM_STATE bit is not set when the issue 
occurs.

7. Given the content of the change in #5, I assumed that the problem was 
power-management related, perhaps a side effect of the e1000e driver not 
being registered as a netdev.  (So perhaps something thinks that no 
devices are in use and turns something off?)

8. I've previously posted register dumps from an e1000e in both the 
"normal" and "link up but not transmitting" states.  They seemed very 
similar, but as I'm not familiar with the register meanings I may have 
overlooked something significant.  (Note that the dumps were captured 
inside the watchdog task, when it detects link up but before it sets 
E1000_TCTL_EN.)

9. I enabled debug logging in the mei driver; it logs a couple of 
runtime_idles and then a runtime_suspend during system startup.  (I 
added a log to runtime_resume that is missing in the driver source, but 
it appears this does not get called in my scenario.)  Note that the 
e1000e driver is still working ok after this.. at least at first.

10. "cat /sys/bus/devices/pci0000:00/0000:00:16.0/power/runtime_status" 
=> "suspended"
     "cat 
/sys/bus/devices/pci0000:00/0000:00:16.0/mei/mei0/power/runtime_status" 
=> "unsupported"
     "cat /sys/bus/devices/pci0000:00/0000:00:1f.0/power/runtime_status" 
=> "active"
     "cat /sys/bus/devices/pci0000:00/0000:00:1f.6/power/runtime_status" 
=> "active" (this is the actual NIC)
     These don't change between the working and non-working states.  
(It's possible that some other device does, but I haven't found it yet.)

11. I did try forcing the above to unsuspend, but this did not recover 
from the e1000e issue.

12. I also tried calling e1000e_reset on link-down.  This produces 
different register output on link-up, but doesn't recover from the 
issue.

13. I also tried recompiling the kernel with CONFIG_PM disabled (no 
power management).  This *does* resolve the problem (but is a very big 
hammer).

14. Possibly also of interest is that if I do *both* #12 and #13, the 
problem remains (suggesting #12 was counter-productive).

FYI the hardware on one of the test machines is as follows:
     00:00.0 Host bridge: Intel Corporation Device 591f (rev 05)
     00:01.0 PCI bridge: Intel Corporation Skylake PCIe Controller (x16) 
(rev 05)
     00:02.0 VGA compatible controller: Intel Corporation Device 5912 
(rev 04)
     00:08.0 System peripheral: Intel Corporation Skylake Gaussian 
Mixture Model
     00:14.0 USB controller: Intel Corporation Sunrise Point-H USB 3.0 
xHCI Controller (rev 31)
     00:14.2 Signal processing controller: Intel Corporation Sunrise 
Point-H Thermal subsystem (rev 31)
     00:15.0 Signal processing controller: Intel Corporation Sunrise 
Point-H Serial IO I2C Controller #0 (rev 31)
     00:15.1 Signal processing controller: Intel Corporation Sunrise 
Point-H Serial IO I2C Controller #1 (rev 31)
     00:16.0 Communication controller: Intel Corporation Sunrise Point-H 
CSME HECI #1 (rev 31)
     00:17.0 SATA controller: Intel Corporation Sunrise Point-H SATA 
controller [AHCI mode] (rev 31)
     00:1b.0 PCI bridge: Intel Corporation Sunrise Point-H PCI Root Port 
#19 (rev f1)
     00:1b.3 PCI bridge: Intel Corporation Sunrise Point-H PCI Root Port 
#20 (rev f1)
     00:1c.0 PCI bridge: Intel Corporation Sunrise Point-H PCI Express 
Root Port #5 (rev f1)
     00:1d.0 PCI bridge: Intel Corporation Sunrise Point-H PCI Express 
Root Port #11 (rev f1)
     00:1e.0 Signal processing controller: Intel Corporation Sunrise 
Point-H Serial IO UART #0 (rev 31)
     00:1f.0 ISA bridge: Intel Corporation Sunrise Point-H LPC Controller 
(rev 31)
     00:1f.2 Memory controller: Intel Corporation Sunrise Point-H PMC 
(rev 31)
     00:1f.4 SMBus: Intel Corporation Sunrise Point-H SMBus (rev 31)
     00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection 
(2) I219-LM (rev 31)
     02:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network 
Connection (rev 03)
     03:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network 
Connection (rev 03)
     05:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network 
Connection (rev 03)

I'm happy to add any code instrumentation or make any other changes 
needed to locate and resolve the problem, and I can readily reproduce it 
-- I'm just at a complete loss as to where to start looking, and am 
still hoping for some suggestions in that regard.

If there's anywhere (or anyone) else better for me to talk to about this 
issue, please let me know that too.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
