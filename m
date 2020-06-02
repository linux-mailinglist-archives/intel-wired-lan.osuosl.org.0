Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D40031EB649
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jun 2020 09:13:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FD0986044;
	Tue,  2 Jun 2020 07:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yc3GIEghyRyH; Tue,  2 Jun 2020 07:13:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D05538614A;
	Tue,  2 Jun 2020 07:13:05 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D7921BF31B
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jun 2020 07:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 683D986135
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jun 2020 07:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwTg9Bm6TKLM for <intel-wired-lan@osuosl.org>;
 Tue,  2 Jun 2020 07:13:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 615F686044
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jun 2020 07:13:03 +0000 (UTC)
IronPort-SDR: PlGp3BRGxn//7eH/PsuQ0zwd4z9agA9ynTIC4nh53YMtrJeHCRixNqgncuYSoNHSW332gQo9Ua
 BF8cfFS35Rsg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 00:13:02 -0700
IronPort-SDR: 0hfkDCuocl/qZQBfnoFk9//eKBbsf43G8LYK9gi4cWZSlT6BD/ll0/oqzuE0CKmBW7MxDV2nJX
 NE7nNIBDNmQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,463,1583222400"; 
 d="scan'208,217";a="272263550"
Received: from aavivi-mobl.ger.corp.intel.com (HELO [10.185.168.224])
 ([10.185.168.224])
 by orsmga006.jf.intel.com with ESMTP; 02 Jun 2020 00:13:00 -0700
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 punit1.agrawal@toshiba.co.jp
References: <mailman.9577.1590117676.59095.intel-wired-lan@osuosl.org>
From: "Avivi, Amir" <amir.avivi@intel.com>
Message-ID: <7cdf1300-973e-6950-8146-d0481661b98b@intel.com>
Date: Tue, 2 Jun 2020 10:13:00 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <mailman.9577.1590117676.59095.intel-wired-lan@osuosl.org>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Intel-wired-lan Digest, Vol 268, Issue 43,
 Replay to message number 6,
 Test hints request for e1000e: Relax condition to trigger reset for ME
 workaround patch
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
Content-Type: multipart/mixed; boundary="===============4020277970502141078=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--===============4020277970502141078==
Content-Type: multipart/alternative;
 boundary="------------28B5F7D14720B1B04C416E8B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------28B5F7D14720B1B04C416E8B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

------------------------------
> Message: 6 Date: Fri, 22 May 2020 12:20:57 +0900 From: Punit Agrawal 
> <punit1.agrawal@toshiba.co.jp> To: "Brown\, Aaron F" 
> <aaron.f.brown@intel.com> Cc: "Kirsher\, Jeffrey T" 
> <jeffrey.t.kirsher@intel.com>, "daniel.sangorrin\@toshiba.co.jp" 
> <daniel.sangorrin@toshiba.co.jp>, Alexander Duyck 
> <alexander.h.duyck@linux.intel.com>, "David S. Miller" 
> <davem@davemloft.net>, "intel-wired-lan\@lists.osuosl.org" 
> <intel-wired-lan@lists.osuosl.org>, "netdev\@vger.kernel.org" 
> <netdev@vger.kernel.org>, "linux-kernel\@vger.kernel.org" 
> <linux-kernel@vger.kernel.org> Subject: Re: [Intel-wired-lan] [PATCH] 
> e1000e: Relax condition to trigger reset for ME workaround Message-ID: 
> <87367sac4m.fsf@kokedama.swc.toshiba.co.jp> Content-Type: text/plain 
> Hi Aaron, "Brown, Aaron F" <aaron.f.brown@intel.com> writes:
>>> From:netdev-owner@vger.kernel.org  <netdev-owner@vger.kernel.org>  On
>>> Behalf Of Punit Agrawal
>>> Sent: Thursday, May 14, 2020 9:31 PM
>>> To: Kirsher, Jeffrey T<jeffrey.t.kirsher@intel.com>
>>> Cc:daniel.sangorrin@toshiba.co.jp; Punit Agrawal
>>> <punit1.agrawal@toshiba.co.jp>; Alexander Duyck
>>> <alexander.h.duyck@linux.intel.com>; David S. Miller<davem@davemloft.net>;
>>> intel-wired-lan@lists.osuosl.org;netdev@vger.kernel.org; linux-
>>> kernel@vger.kernel.org
>>> Subject: [PATCH] e1000e: Relax condition to trigger reset for ME workaround
>>>
>>> It's an error if the value of the RX/TX tail descriptor does not match
>>> what was written. The error condition is true regardless the duration
>>> of the interference from ME. But the driver only performs the reset if
>>> E1000_ICH_FWSM_PCIM2PCI_COUNT (2000) iterations of 50us delay have
>>> transpired. The extra condition can lead to inconsistency between the
>>> state of hardware as expected by the driver.
>>>
>>> Fix this by dropping the check for number of delay iterations.
>>>
>>> While at it, also make __ew32_prepare() static as it's not used
>>> anywhere else.
>>>
>>> Signed-off-by: Punit Agrawal<punit1.agrawal@toshiba.co.jp>
>>> Reviewed-by: Alexander Duyck<alexander.h.duyck@linux.intel.com>
>>> Cc: Jeff Kirsher<jeffrey.t.kirsher@intel.com>
>>> Cc: "David S. Miller"<davem@davemloft.net>
>>> Cc:intel-wired-lan@lists.osuosl.org
>>> Cc:netdev@vger.kernel.org
>>> Cc:linux-kernel@vger.kernel.org
>>> ---
>>> Hi Jeff,
>>>
>>> If there are no further comments please consider merging the patch.
>>>
>>> Also, should it be marked for backport to stable?
>>>
>>> Thanks,
>>> Punit
>>>
>>> RFC[0] -> v1:
>>> * Dropped return value for __ew32_prepare() as it's not used
>>> * Made __ew32_prepare() static
>>> * Added tags
>>>
>>> [0]https://lkml.org/lkml/2020/5/12/20
>>>
>>>   drivers/net/ethernet/intel/e1000e/e1000.h  |  1 -
>>>   drivers/net/ethernet/intel/e1000e/netdev.c | 12 +++++-------
>>>   2 files changed, 5 insertions(+), 8 deletions(-)
>>>
>> Tested-by: Aaron Brown<aaron.f.brown@intel.com>
> Thanks for taking the patch for a spin.
>
> Jeff, let me know if you're okay to apply the tag or want me to send a
> new version.
Hi Punit,
This patch appears to be effecting some legacy code effecting old hardware.
We tried applying it but we could not get the driver to run the changed 
code lines.
Please provide some test hints(What platforms did you check it on? What 
tests did you run?) regarding this patch.
Thanks,
Amir
> Thanks,
> Punit

--------------28B5F7D14720B1B04C416E8B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    ------------------------------
    <blockquote type="cite"
      cite="mid:mailman.9577.1590117676.59095.intel-wired-lan@osuosl.org">
      <div class="moz-text-plain" wrap="true" graphical-quote="true"
        style="font-family: -moz-fixed; font-size: 13px;"
        lang="x-western">
        <pre class="moz-quote-pre" wrap=""><div class="moz-txt-sig"><div class="moz-txt-sig"><div class="moz-txt-sig">
Message: 6
Date: Fri, 22 May 2020 12:20:57 +0900
From: Punit Agrawal <a class="moz-txt-link-rfc2396E" href="mailto:punit1.agrawal@toshiba.co.jp" moz-do-not-send="true">&lt;punit1.agrawal@toshiba.co.jp&gt;</a>
To: "Brown\, Aaron F" <a class="moz-txt-link-rfc2396E" href="mailto:aaron.f.brown@intel.com" moz-do-not-send="true">&lt;aaron.f.brown@intel.com&gt;</a>
Cc: "Kirsher\, Jeffrey T" <a class="moz-txt-link-rfc2396E" href="mailto:jeffrey.t.kirsher@intel.com" moz-do-not-send="true">&lt;jeffrey.t.kirsher@intel.com&gt;</a>,
	<a class="moz-txt-link-rfc2396E" href="mailto:daniel.sangorrin\@toshiba.co.jp" moz-do-not-send="true">"daniel.sangorrin\@toshiba.co.jp"</a> <a class="moz-txt-link-rfc2396E" href="mailto:daniel.sangorrin@toshiba.co.jp" moz-do-not-send="true">&lt;daniel.sangorrin@toshiba.co.jp&gt;</a>,
	Alexander Duyck <a class="moz-txt-link-rfc2396E" href="mailto:alexander.h.duyck@linux.intel.com" moz-do-not-send="true">&lt;alexander.h.duyck@linux.intel.com&gt;</a>, "David S. Miller"
	<a class="moz-txt-link-rfc2396E" href="mailto:davem@davemloft.net" moz-do-not-send="true">&lt;davem@davemloft.net&gt;</a>, <a class="moz-txt-link-rfc2396E" href="mailto:intel-wired-lan\@lists.osuosl.org" moz-do-not-send="true">"intel-wired-lan\@lists.osuosl.org"</a>
	<a class="moz-txt-link-rfc2396E" href="mailto:intel-wired-lan@lists.osuosl.org" moz-do-not-send="true">&lt;intel-wired-lan@lists.osuosl.org&gt;</a>, <a class="moz-txt-link-rfc2396E" href="mailto:netdev\@vger.kernel.org" moz-do-not-send="true">"netdev\@vger.kernel.org"</a>
	<a class="moz-txt-link-rfc2396E" href="mailto:netdev@vger.kernel.org" moz-do-not-send="true">&lt;netdev@vger.kernel.org&gt;</a>, <a class="moz-txt-link-rfc2396E" href="mailto:linux-kernel\@vger.kernel.org" moz-do-not-send="true">"linux-kernel\@vger.kernel.org"</a>
	<a class="moz-txt-link-rfc2396E" href="mailto:linux-kernel@vger.kernel.org" moz-do-not-send="true">&lt;linux-kernel@vger.kernel.org&gt;</a>
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Relax condition to
	trigger reset for ME workaround
Message-ID: <a class="moz-txt-link-rfc2396E" href="mailto:87367sac4m.fsf@kokedama.swc.toshiba.co.jp" moz-do-not-send="true">&lt;87367sac4m.fsf@kokedama.swc.toshiba.co.jp&gt;</a>
Content-Type: text/plain

Hi Aaron,

"Brown, Aaron F" <a class="moz-txt-link-rfc2396E" href="mailto:aaron.f.brown@intel.com" moz-do-not-send="true">&lt;aaron.f.brown@intel.com&gt;</a> writes:

</div></div></div></pre>
        <blockquote type="cite" style="color: #000000;">
          <blockquote type="cite" style="color: #000000;">
            <pre class="moz-quote-pre" wrap="">From: <a class="moz-txt-link-abbreviated" href="mailto:netdev-owner@vger.kernel.org" moz-do-not-send="true">netdev-owner@vger.kernel.org</a> <a class="moz-txt-link-rfc2396E" href="mailto:netdev-owner@vger.kernel.org" moz-do-not-send="true">&lt;netdev-owner@vger.kernel.org&gt;</a> On
Behalf Of Punit Agrawal
Sent: Thursday, May 14, 2020 9:31 PM
To: Kirsher, Jeffrey T <a class="moz-txt-link-rfc2396E" href="mailto:jeffrey.t.kirsher@intel.com" moz-do-not-send="true">&lt;jeffrey.t.kirsher@intel.com&gt;</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:daniel.sangorrin@toshiba.co.jp" moz-do-not-send="true">daniel.sangorrin@toshiba.co.jp</a>; Punit Agrawal
<a class="moz-txt-link-rfc2396E" href="mailto:punit1.agrawal@toshiba.co.jp" moz-do-not-send="true">&lt;punit1.agrawal@toshiba.co.jp&gt;</a>; Alexander Duyck
<a class="moz-txt-link-rfc2396E" href="mailto:alexander.h.duyck@linux.intel.com" moz-do-not-send="true">&lt;alexander.h.duyck@linux.intel.com&gt;</a>; David S. Miller <a class="moz-txt-link-rfc2396E" href="mailto:davem@davemloft.net" moz-do-not-send="true">&lt;davem@davemloft.net&gt;</a>;
<a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@lists.osuosl.org" moz-do-not-send="true">intel-wired-lan@lists.osuosl.org</a>; <a class="moz-txt-link-abbreviated" href="mailto:netdev@vger.kernel.org" moz-do-not-send="true">netdev@vger.kernel.org</a>; linux-
<a class="moz-txt-link-abbreviated" href="mailto:kernel@vger.kernel.org" moz-do-not-send="true">kernel@vger.kernel.org</a>
Subject: [PATCH] e1000e: Relax condition to trigger reset for ME workaround

It's an error if the value of the RX/TX tail descriptor does not match
what was written. The error condition is true regardless the duration
of the interference from ME. But the driver only performs the reset if
E1000_ICH_FWSM_PCIM2PCI_COUNT (2000) iterations of 50us delay have
transpired. The extra condition can lead to inconsistency between the
state of hardware as expected by the driver.

Fix this by dropping the check for number of delay iterations.

While at it, also make __ew32_prepare() static as it's not used
anywhere else.

Signed-off-by: Punit Agrawal <a class="moz-txt-link-rfc2396E" href="mailto:punit1.agrawal@toshiba.co.jp" moz-do-not-send="true">&lt;punit1.agrawal@toshiba.co.jp&gt;</a>
Reviewed-by: Alexander Duyck <a class="moz-txt-link-rfc2396E" href="mailto:alexander.h.duyck@linux.intel.com" moz-do-not-send="true">&lt;alexander.h.duyck@linux.intel.com&gt;</a>
Cc: Jeff Kirsher <a class="moz-txt-link-rfc2396E" href="mailto:jeffrey.t.kirsher@intel.com" moz-do-not-send="true">&lt;jeffrey.t.kirsher@intel.com&gt;</a>
Cc: "David S. Miller" <a class="moz-txt-link-rfc2396E" href="mailto:davem@davemloft.net" moz-do-not-send="true">&lt;davem@davemloft.net&gt;</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@lists.osuosl.org" moz-do-not-send="true">intel-wired-lan@lists.osuosl.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:netdev@vger.kernel.org" moz-do-not-send="true">netdev@vger.kernel.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:linux-kernel@vger.kernel.org" moz-do-not-send="true">linux-kernel@vger.kernel.org</a>
---
Hi Jeff,

If there are no further comments please consider merging the patch.

Also, should it be marked for backport to stable?

Thanks,
Punit

RFC[0] -&gt; v1:
* Dropped return value for __ew32_prepare() as it's not used
* Made __ew32_prepare() static
* Added tags

[0] <a class="moz-txt-link-freetext" href="https://lkml.org/lkml/2020/5/12/20" moz-do-not-send="true">https://lkml.org/lkml/2020/5/12/20</a>

 drivers/net/ethernet/intel/e1000e/e1000.h  |  1 -
 drivers/net/ethernet/intel/e1000e/netdev.c | 12 +++++-------
 2 files changed, 5 insertions(+), 8 deletions(-)

</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">Tested-by: Aaron Brown <a class="moz-txt-link-rfc2396E" href="mailto:aaron.f.brown@intel.com" moz-do-not-send="true">&lt;aaron.f.brown@intel.com&gt;</a>
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">Thanks for taking the patch for a spin.

Jeff, let me know if you're okay to apply the tag or want me to send a
new version.
</pre>
      </div>
    </blockquote>
    Hi Punit,<br>
    This patch appears to be effecting some legacy code effecting old
    hardware. <br>
    We tried applying it but we could not get the driver to run the
    changed code lines.<br>
    Please provide some test hints(What platforms did you check it on?
    What tests did you run?) regarding this patch.<br>
    Thanks,<br>
    Amir
    <blockquote type="cite"
      cite="mid:mailman.9577.1590117676.59095.intel-wired-lan@osuosl.org">
      <div class="moz-text-plain" wrap="true" graphical-quote="true"
        style="font-family: -moz-fixed; font-size: 13px;"
        lang="x-western">
        <pre class="moz-quote-pre" wrap="">
Thanks,
Punit
</pre>
      </div>
    </blockquote>
  </body>
</html>

--------------28B5F7D14720B1B04C416E8B--

--===============4020277970502141078==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4020277970502141078==--
