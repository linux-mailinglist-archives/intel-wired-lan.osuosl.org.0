Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC6FCBB0F2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Dec 2025 16:39:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0C6780B60;
	Sat, 13 Dec 2025 15:39:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wrmEBYJcqMkd; Sat, 13 Dec 2025 15:39:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CB8B80B80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765640364;
	bh=ND+4v3zQgub7B/hEfvuDN6eE9HysC1ljqDiktdQVajM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bAvjqhkZqOkJP5+tj+ds8uS0KihohGBXNqOD3lyl4o2ZY4aiM3NA1V7YK7eoWqMaK
	 fliqUTfAd0eCpLJkyS2jWRZM3pERbjqfvMI6klgx7+m1jiGI+ugIH8t8mqQHaU+zOa
	 vEINei8WdK3Rf1omUjPOiKjPPN6YHQ/AGF7dwPQRYAK8BygJ65vscxfn0eL/PsxASb
	 jTYQWD6n10GnNKFVjMoHygFajWSlAvHY7HgItmr2yheadNHxx6tmncJiYjA3udTwKe
	 7XzDrgU6zNSiizdgphdtdUFIlEUBeQlpy/mk6FogEp2iu9+jFjqB2B87zY0CviQB3b
	 5xrhVbZpxPUDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CB8B80B80;
	Sat, 13 Dec 2025 15:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DF9C2C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 15:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FE964070D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 15:39:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4FDGWt29gFUf for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Dec 2025 15:39:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=151.80.40.192;
 helo=smtp.blochl.de; envelope-from=markus@blochl.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5952A40080
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5952A40080
Received: from smtp.blochl.de (mail.blochl.de [151.80.40.192])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5952A40080
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 15:39:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.blochl.de 0122A46C013F
Received: from WorkKnecht (ppp-93-104-11-48.dynamic.mnet-online.de
 [93.104.11.48])
 by smtp.blochl.de (Postfix) with ESMTPSA id 0122A46C013F;
 Sat, 13 Dec 2025 15:39:13 +0000 (UTC)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.3 at 0aeafd614e10
Date: Sat, 13 Dec 2025 16:39:08 +0100
From: Markus =?utf-8?Q?Bl=C3=B6chl?= <markus@blochl.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, 
 Markus =?utf-8?Q?Bl=C3=B6chl?= <markus.bloechl@ipetronik.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Message-ID: <aT17y5BtrjPU4esU@WorkKnecht>
References: <20251130-i40e_ptp_link_down-v2-1-8d6dfc10a661@blochl.de>
 <e765a7ca-c3dc-49cc-a8a5-de6c0fa58f2f@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e765a7ca-c3dc-49cc-a8a5-de6c0fa58f2f@molgen.mpg.de>
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.4
 (smtp.blochl.de [0.0.0.0]); Sat, 13 Dec 2025 15:39:14 +0000 (UTC)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=blochl.de
X-Mailman-Original-Authentication-Results: mail.blochl.de;
 dmarc=none (p=none dis=none)
 header.from=blochl.de
X-Mailman-Original-Authentication-Results: mail.blochl.de;
 spf=fail smtp.mailfrom=blochl.de
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix ptp time increment
 while link is down
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Nov 30, 2025 at 08:27:21PM +0100, Paul Menzel wrote:
> Dear Markus,
> 
> 
> Thank you for the patch.
> 
> Am 30.11.25 um 16:23 schrieb Markus Blöchl:
> > When an X710 ethernet port with an active ptp daemon (like the ptp4l and
> > phc2sys combo) suddenly loses its link and regains it after a while, the
> > ptp daemon has a hard time to recover synchronization and sometimes
> > entirely fails to do so.
> > 
> > The issue seems to be related to a wrongly configured increment while the
> > link is down. This could not be observed with the Intel reference driver.
> > We identified the fix to appear in Intels official ethernet-linux-i40e
> 
> Intel’s
> 
> > release version 2.17.4.
> > 
> > Include the relevant changes in the kernel version of this driver.
> > 
> > Fixes: beb0dff1251d ("i40e: enable PTP")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Markus Blöchl <markus@blochl.de>
> > ---
> > Tested with an X710 at 10G link speed and kernel version 6.12.42.
> 
> I’d really appreciate it, if you put the in the commit message above, and if
> you provided exact steps for reproducing this in the commit message.
> 

Which info are are you missing here?
I assume you dropped the relevant word here.

There is not much to add to the commit message except for the visible
results maybe (and they are a bit verbose):

In our setup we connect one X710 port using a SFP+ DAC cable to any other
device. (Do NOT connect the other end of the cable to the same
controller. That still results in weird behaviour.)

We bring the device up and start phc2sys:

    root@DUT:~# phc2sys -c ethsfpp2 -s CLOCK_REALTIME -O 0 -m
    phc2sys[2861.416]: ethsfpp2 sys offset        34 s0 freq  +24309 delay    468
    phc2sys[2862.416]: ethsfpp2 sys offset        28 s2 freq  +24303 delay    466
    phc2sys[2863.416]: ethsfpp2 sys offset        27 s2 freq  +24330 delay    470
    phc2sys[2864.416]: ethsfpp2 sys offset        -6 s2 freq  +24306 delay    469
    phc2sys[2865.416]: ethsfpp2 sys offset       -11 s2 freq  +24299 delay    470
    phc2sys[2866.416]: ethsfpp2 sys offset       -11 s2 freq  +24295 delay    469
    phc2sys[2867.416]: ethsfpp2 sys offset        -5 s2 freq  +24298 delay    471
    phc2sys[2868.416]: ethsfpp2 sys offset        -6 s2 freq  +24296 delay    466
    phc2sys[2869.417]: ethsfpp2 sys offset        -3 s2 freq  +24297 delay    467
    -- unplug SFP+ connector here
    phc2sys[2870.417]: ethsfpp2 sys offset -910053965 s2 freq -900000000 delay    555
    phc2sys[2871.417]: ethsfpp2 sys offset -1815157507 s2 freq -900000000 delay    580
    phc2sys[2872.417]: ethsfpp2 sys offset -2720276307 s2 freq -900000000 delay    556
    phc2sys[2873.417]: ethsfpp2 sys offset -3625378929 s2 freq -900000000 delay    555
    phc2sys[2874.417]: ethsfpp2 sys offset -4530478685 s2 freq -900000000 delay    584
    phc2sys[2875.417]: ethsfpp2 sys offset -5435585855 s2 freq -900000000 delay    555
    phc2sys[2876.417]: ethsfpp2 sys offset -6340689862 s2 freq -900000000 delay    558
    phc2sys[2877.418]: ethsfpp2 sys offset -7245811691 s2 freq -900000000 delay    552
    phc2sys[2878.418]: ethsfpp2 sys offset -8150937047 s2 freq -900000000 delay    556
    phc2sys[2879.418]: ethsfpp2 sys offset -9056054883 s2 freq -900000000 delay    555
    phc2sys[2880.418]: clockcheck: clock jumped backward or running slower than expected!
    phc2sys[2880.418]: ethsfpp2 sys offset -9961160837 s0 freq -900000000 delay    577
    phc2sys[2881.418]: ethsfpp2 sys offset -10866272666 s2 freq -900000000 delay    555
    phc2sys[2882.418]: ethsfpp2 sys offset -11771376439 s2 freq -900000000 delay    552
    phc2sys[2883.418]: ethsfpp2 sys offset -12676485774 s2 freq -900000000 delay    555
    phc2sys[2884.418]: ethsfpp2 sys offset -13581590974 s2 freq -900000000 delay    554
    phc2sys[2885.419]: ethsfpp2 sys offset -14486696148 s2 freq -900000000 delay    555
    phc2sys[2886.419]: ethsfpp2 sys offset -15391800951 s2 freq -900000000 delay    552
    phc2sys[2887.419]: ethsfpp2 sys offset -16296903380 s2 freq -900000000 delay    555
    phc2sys[2888.419]: ethsfpp2 sys offset -17202007779 s2 freq -900000000 delay    553
    phc2sys[2889.419]: ethsfpp2 sys offset -18107109951 s2 freq -900000000 delay    554
    -- plug SFP+ connector back here
    phc2sys[2890.419]: ethsfpp2 sys offset -19012214756 s2 freq -900000000 delay    552
    phc2sys[2891.419]: clockcheck: clock jumped backward or running slower than expected!
    phc2sys[2891.419]: ethsfpp2 sys offset -19486905092 s0 freq -900000000 delay    466
    phc2sys[2892.419]: ethsfpp2 sys offset -19499749450 s2 freq -900000000 delay    468
    phc2sys[2893.420]: clockcheck: clock jumped backward or running slower than expected!
    phc2sys[2893.420]: ethsfpp2 sys offset -18599585360 s0 freq -900000000 delay    467
    phc2sys[2894.420]: ethsfpp2 sys offset -17699424847 s2 freq  +24219 delay    465
    phc2sys[2895.420]: ethsfpp2 sys offset -17699419372 s2 freq -900000000 delay    470
    phc2sys[2896.420]: ethsfpp2 sys offset -16799275857 s2 freq -900000000 delay    468
    phc2sys[2897.420]: ethsfpp2 sys offset -15899100892 s2 freq -900000000 delay    470
    phc2sys[2898.420]: ethsfpp2 sys offset -14998932608 s2 freq -900000000 delay    469
    phc2sys[2899.420]: ethsfpp2 sys offset -14098776398 s2 freq -900000000 delay    463


When we do the same with the patch applied it looks like this:

    root@DUT:~# phc2sys -c ethsfpp2 -s CLOCK_REALTIME -O 0 -m
    phc2sys[3011.380]: ethsfpp2 sys offset    399464 s0 freq      -0 delay    467
    phc2sys[3012.380]: ethsfpp2 sys offset    423631 s1 freq  +24162 delay    467
    phc2sys[3013.380]: ethsfpp2 sys offset         5 s2 freq  +24167 delay    469
    phc2sys[3014.381]: ethsfpp2 sys offset        -2 s2 freq  +24161 delay    466
    phc2sys[3015.381]: ethsfpp2 sys offset         4 s2 freq  +24167 delay    472
    phc2sys[3016.381]: ethsfpp2 sys offset       -12 s2 freq  +24152 delay    463
    phc2sys[3017.381]: ethsfpp2 sys offset        -7 s2 freq  +24153 delay    468
    phc2sys[3018.381]: ethsfpp2 sys offset         0 s2 freq  +24158 delay    466
    phc2sys[3019.381]: ethsfpp2 sys offset        -4 s2 freq  +24154 delay    466
    phc2sys[3020.381]: ethsfpp2 sys offset        -2 s2 freq  +24155 delay    469
    phc2sys[3021.381]: ethsfpp2 sys offset        -8 s2 freq  +24148 delay    465
    phc2sys[3022.381]: ethsfpp2 sys offset        -6 s2 freq  +24148 delay    464
    -- unplug SFP+ connector here
    phc2sys[3023.382]: ethsfpp2 sys offset   -153373 s2 freq -129221 delay    555
    phc2sys[3024.382]: ethsfpp2 sys offset        60 s2 freq  -21800 delay    578
    phc2sys[3025.382]: ethsfpp2 sys offset     46039 s2 freq  +24197 delay    556
    phc2sys[3026.382]: ethsfpp2 sys offset     46021 s2 freq  +37991 delay    549
    phc2sys[3027.382]: ethsfpp2 sys offset     32216 s2 freq  +37992 delay    578
    phc2sys[3028.382]: ethsfpp2 sys offset     18382 s2 freq  +33823 delay    551
    phc2sys[3029.382]: ethsfpp2 sys offset      8725 s2 freq  +29681 delay    553
    phc2sys[3030.382]: ethsfpp2 sys offset      3212 s2 freq  +26785 delay    555
    phc2sys[3031.383]: ethsfpp2 sys offset       587 s2 freq  +25124 delay    556
    phc2sys[3032.383]: ethsfpp2 sys offset      -383 s2 freq  +24330 delay    555
    phc2sys[3033.383]: ethsfpp2 sys offset      -564 s2 freq  +24034 delay    554
    phc2sys[3034.383]: ethsfpp2 sys offset      -447 s2 freq  +23982 delay    557
    phc2sys[3035.383]: ethsfpp2 sys offset      -262 s2 freq  +24033 delay    581
    phc2sys[3036.383]: ethsfpp2 sys offset      -159 s2 freq  +24057 delay    564
    phc2sys[3037.383]: ethsfpp2 sys offset       -73 s2 freq  +24095 delay    564
    phc2sys[3038.383]: ethsfpp2 sys offset       -30 s2 freq  +24116 delay    552
    phc2sys[3039.384]: ethsfpp2 sys offset        -8 s2 freq  +24129 delay    554
    phc2sys[3040.384]: ethsfpp2 sys offset       -11 s2 freq  +24124 delay    552
    phc2sys[3041.384]: ethsfpp2 sys offset        -2 s2 freq  +24130 delay    554
    phc2sys[3042.384]: ethsfpp2 sys offset        -4 s2 freq  +24127 delay    554
    phc2sys[3043.384]: ethsfpp2 sys offset         4 s2 freq  +24134 delay    557
    -- plug SFP+ connector back here
    phc2sys[3044.384]: clockcheck: clock jumped forward or running faster than expected!
    phc2sys[3044.384]: ethsfpp2 sys offset 5660511605 s0 freq  +24134 delay    472
    phc2sys[3045.384]: clockcheck: clock jumped forward or running faster than expected!
    phc2sys[3045.384]: ethsfpp2 sys offset 5912197029 s0 freq  +24134 delay    468
    phc2sys[3046.385]: ethsfpp2 sys offset 5912221128 s2 freq  +48226 delay    468
    phc2sys[3047.385]: ethsfpp2 sys offset 5912197000 s2 freq +900000000 delay    471
    phc2sys[3048.385]: ethsfpp2 sys offset 5012065553 s2 freq +900000000 delay    468
    phc2sys[3049.385]: ethsfpp2 sys offset 4111949940 s2 freq +900000000 delay    462
    phc2sys[3050.385]: ethsfpp2 sys offset 3211840906 s2 freq +900000000 delay    469
    phc2sys[3051.385]: ethsfpp2 sys offset 2311737228 s2 freq +900000000 delay    467
    phc2sys[3052.385]: ethsfpp2 sys offset 1411628446 s2 freq +900000000 delay    467
    phc2sys[3053.385]: ethsfpp2 sys offset 511521784 s2 freq +511570010 delay    471
    phc2sys[3054.386]: ethsfpp2 sys offset    -99598 s2 freq +153405163 delay    462
    phc2sys[3055.386]: ethsfpp2 sys offset -153503011 s2 freq  -28130 delay    468
    phc2sys[3056.386]: ethsfpp2 sys offset -153451254 s2 freq -46027276 delay    469
    phc2sys[3057.386]: ethsfpp2 sys offset -107393800 s2 freq -46005198 delay    468
    phc2sys[3058.386]: ethsfpp2 sys offset -61358209 s2 freq -32187747 delay    468
    phc2sys[3059.386]: ethsfpp2 sys offset -29141851 s2 freq -18378852 delay    471
    phc2sys[3060.386]: ethsfpp2 sys offset -10736285 s2 freq -8715841 delay    465
    phc2sys[3061.386]: ethsfpp2 sys offset  -1994940 s2 freq -3195382 delay    465
    phc2sys[3062.386]: ethsfpp2 sys offset   1225024 s2 freq -573900 delay    469
    phc2sys[3063.387]: ethsfpp2 sys offset   1823140 s2 freq +391724 delay    466
    phc2sys[3064.387]: ethsfpp2 sys offset   1455492 s2 freq +571018 delay    469
    phc2sys[3065.387]: ethsfpp2 sys offset    908511 s2 freq +460684 delay    465
    phc2sys[3066.387]: ethsfpp2 sys offset    471888 s2 freq +296614 delay    470
    phc2sys[3067.387]: ethsfpp2 sys offset    199351 s2 freq +165644 delay    465
    phc2sys[3068.387]: ethsfpp2 sys offset     57808 s2 freq  +83906 delay    469
    phc2sys[3069.387]: ethsfpp2 sys offset     -1991 s2 freq  +41450 delay    468
    phc2sys[3070.387]: ethsfpp2 sys offset    -19323 s2 freq  +23520 delay    466
    phc2sys[3071.388]: ethsfpp2 sys offset    -18729 s2 freq  +18317 delay    466
    phc2sys[3072.388]: ethsfpp2 sys offset    -12925 s2 freq  +18503 delay    466
    phc2sys[3073.388]: ethsfpp2 sys offset     -7311 s2 freq  +20239 delay    465


Those large jumps in the time offset still aren't great but they at least can be
recovered in a reasonable amount of time.

For reference some more details on our firmware versions:

    # ethtool -i ethsfpp2
    driver: i40e
    version: 6.12.42-xlog
    firmware-version: 9.00 0x8000ceb7 0.0.0
    expansion-rom-version: 
    bus-info: 0000:01:00.1
    supports-statistics: yes
    supports-test: yes
    supports-eeprom-access: yes
    supports-register-dump: yes
    supports-priv-flags: yes


> > ---
> > Changes in v2:
> > - Fix kdoc and code formatting
> > - Rebase onto net tree
> > - Link to v1: https://lore.kernel.org/r/20251119-i40e_ptp_link_down-v1-1-b351fed254b3@blochl.de
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h |  9 +++
> >   drivers/net/ethernet/intel/i40e/i40e_ptp.c        | 69 +++++++++++++++++++++--
> >   drivers/net/ethernet/intel/i40e/i40e_register.h   |  9 +++
> >   drivers/net/ethernet/intel/i40e/i40e_type.h       |  8 +++
> >   4 files changed, 90 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> > index cc02a85ad42b..ec176e9569ad 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> > @@ -1488,6 +1488,15 @@ enum i40e_aq_link_speed {
> >   	I40E_LINK_SPEED_25GB	= BIT(I40E_LINK_SPEED_25GB_SHIFT),
> >   };
> > +enum i40e_prt_mac_pcs_link_speed {
> > +	I40E_PRT_MAC_PCS_LINK_SPEED_UNKNOWN = 0,
> > +	I40E_PRT_MAC_PCS_LINK_SPEED_100MB,
> > +	I40E_PRT_MAC_PCS_LINK_SPEED_1GB,
> > +	I40E_PRT_MAC_PCS_LINK_SPEED_10GB,
> > +	I40E_PRT_MAC_PCS_LINK_SPEED_40GB,
> > +	I40E_PRT_MAC_PCS_LINK_SPEED_20GB
> > +};
> > +
> >   struct i40e_aqc_module_desc {
> >   	u8 oui[3];
> >   	u8 reserved1;
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > index 33535418178b..89abe2f22216 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > @@ -847,6 +847,66 @@ void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf, struct sk_buff *skb, u8 index)
> >   	i40e_ptp_convert_to_hwtstamp(skb_hwtstamps(skb), ns);
> >   }
> > +/**
> > + * i40e_ptp_get_link_speed_hw - get the link speed
> > + * @pf: Board private structure
> > + *
> > + * Calculate link speed depending on the link status.
> > + *
> > + * Return: current link speed.
> > + **/
> > +static enum i40e_aq_link_speed i40e_ptp_get_link_speed_hw(struct i40e_pf *pf)
> > +{
> > +	bool link_up = pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP;
> > +	enum i40e_aq_link_speed link_speed = I40E_LINK_SPEED_UNKNOWN;
> > +	struct i40e_hw *hw = &pf->hw;
> > +
> > +	if (link_up) {
> > +		struct i40e_link_status *hw_link_info = &hw->phy.link_info;
> > +
> > +		i40e_aq_get_link_info(hw, true, NULL, NULL);
> > +		link_speed = hw_link_info->link_speed;
> > +	} else {
> > +		enum i40e_prt_mac_link_speed prtmac_linksta;
> > +		u64 prtmac_pcs_linksta;
> > +
> > +		prtmac_linksta = (rd32(hw, I40E_PRTMAC_LINKSTA(0)) &
> > +				  I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_MASK) >>
> > +				  I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_SHIFT;
> > +		if (prtmac_linksta == I40E_PRT_MAC_LINK_SPEED_40GB) {
> > +			link_speed = I40E_LINK_SPEED_40GB;
> > +		} else {
> > +			i40e_aq_debug_read_register(hw,
> > +						    I40E_PRTMAC_PCS_LINK_STATUS1(0),
> > +						    &prtmac_pcs_linksta,
> > +						    NULL);
> > +
> > +			prtmac_pcs_linksta = (prtmac_pcs_linksta &
> > +					      I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_MASK) >>
> > +					      I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT;
> > +
> > +			switch (prtmac_pcs_linksta) {
> > +			case I40E_PRT_MAC_PCS_LINK_SPEED_100MB:
> > +				link_speed = I40E_LINK_SPEED_100MB;
> > +				break;
> > +			case I40E_PRT_MAC_PCS_LINK_SPEED_1GB:
> > +				link_speed = I40E_LINK_SPEED_1GB;
> > +				break;
> > +			case I40E_PRT_MAC_PCS_LINK_SPEED_10GB:
> > +				link_speed = I40E_LINK_SPEED_10GB;
> > +				break;
> > +			case I40E_PRT_MAC_PCS_LINK_SPEED_20GB:
> > +				link_speed = I40E_LINK_SPEED_20GB;
> > +				break;
> > +			default:
> > +				link_speed = I40E_LINK_SPEED_UNKNOWN;
> > +			}
> > +		}
> > +	}
> > +
> > +	return link_speed;
> > +}
> > +
> >   /**
> >    * i40e_ptp_set_increment - Utility function to update clock increment rate
> >    * @pf: Board private structure
> > @@ -857,16 +917,14 @@ void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf, struct sk_buff *skb, u8 index)
> >    **/
> >   void i40e_ptp_set_increment(struct i40e_pf *pf)
> >   {
> > -	struct i40e_link_status *hw_link_info;
> > +	enum i40e_aq_link_speed link_speed;
> >   	struct i40e_hw *hw = &pf->hw;
> >   	u64 incval;
> >   	u32 mult;
> > -	hw_link_info = &hw->phy.link_info;
> > +	link_speed = i40e_ptp_get_link_speed_hw(pf);
> > -	i40e_aq_get_link_info(&pf->hw, true, NULL, NULL);
> > -
> > -	switch (hw_link_info->link_speed) {
> > +	switch (link_speed) {
> 
> Excuse my ignorance, but could you or the Intel authors explain in the
> commit message, why `hw_link_info->link_speed` is incorrect?
> 

I admittedly have no idea. I can only assume that the controller might
decide to throttle its internal reference clock independently of the
configured link speed if there is no link anyway.
In any case, what would be the "correct" value for link_speed if there
is no link?

But I'd also appreciate it a lot if someone from Intel could chime in
to shed some light.


> >   	case I40E_LINK_SPEED_10GB:
> >   		mult = I40E_PTP_10GB_INCVAL_MULT;
> >   		break;
> > @@ -909,6 +967,7 @@ void i40e_ptp_set_increment(struct i40e_pf *pf)
> >   	/* Update the base adjustement value. */
> >   	WRITE_ONCE(pf->ptp_adj_mult, mult);
> >   	smp_mb(); /* Force the above update. */
> > +	i40e_ptp_set_1pps_signal_hw(pf);
> 
> From the commit message, I would have thought, only this line would be
> needed.

This line is actually the least important part, as we don't use any PPS
pin in our setup. To be honest, I am not sure if this was even required.
But it was part of the original patch and doesn't seem to make anything
worse.

> 
> >   }
> >   /**
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
> > index 432afbb64201..c4051dbcc297 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_register.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
> > @@ -530,6 +530,15 @@
> >   #define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT 0
> >   #define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_MASK I40E_MASK(0xFFFF, \
> >   	I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT)
> > +/* _i=0...3 */ /* Reset: GLOBR */
> > +#define I40E_PRTMAC_PCS_LINK_STATUS1(_i) (0x0008C200 + ((_i) * 4))
> > +#define I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT 24
> > +#define I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_MASK I40E_MASK(0x7, I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT)
> > +#define I40E_PRTMAC_PCS_LINK_STATUS2 0x0008C220
> > +/* _i=0...3 */ /* Reset: GLOBR */
> > +#define I40E_PRTMAC_LINKSTA(_i) (0x001E2420 + ((_i) * 4))
> > +#define I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_SHIFT 27
> > +#define I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_MASK I40E_MASK(0x7, I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_SHIFT)
> >   #define I40E_GLNVM_FLA 0x000B6108 /* Reset: POR */
> >   #define I40E_GLNVM_FLA_LOCKED_SHIFT 6
> >   #define I40E_GLNVM_FLA_LOCKED_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_LOCKED_SHIFT)
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
> > index ed8bbdb586da..98c8c5709e5f 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
> > @@ -115,6 +115,14 @@ enum i40e_queue_type {
> >   	I40E_QUEUE_TYPE_UNKNOWN
> >   };
> > +enum i40e_prt_mac_link_speed {
> > +	I40E_PRT_MAC_LINK_SPEED_100MB = 0,
> > +	I40E_PRT_MAC_LINK_SPEED_1GB,
> > +	I40E_PRT_MAC_LINK_SPEED_10GB,
> > +	I40E_PRT_MAC_LINK_SPEED_40GB,
> > +	I40E_PRT_MAC_LINK_SPEED_20GB
> > +};
> > +
> >   struct i40e_link_status {
> >   	enum i40e_aq_phy_type phy_type;
> >   	enum i40e_aq_link_speed link_speed;
> 
> 
> Kind regards,
> 
> Pul

Thanks,
Markus

-- 
