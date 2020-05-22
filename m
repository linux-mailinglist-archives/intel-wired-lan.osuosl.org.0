Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F981DDDCC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 05:21:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6CAC189386;
	Fri, 22 May 2020 03:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IRiAYUBM6mxk; Fri, 22 May 2020 03:21:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E11B89389;
	Fri, 22 May 2020 03:21:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1DF21BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 03:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC5B081612
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 03:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 69k9F+ei+qYY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 03:21:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mo-csw.securemx.jp (mo-csw1516.securemx.jp [210.130.202.155])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 07B478466D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 03:21:13 +0000 (UTC)
Received: by mo-csw.securemx.jp (mx-mo-csw1516) id 04M3L1OB004202;
 Fri, 22 May 2020 12:21:01 +0900
X-Iguazu-Qid: 34trJzXMWLTWgibhZ2
X-Iguazu-QSIG: v=2; s=0; t=1590117661; q=34trJzXMWLTWgibhZ2;
 m=wrPARnLkF2hEskCsXYqcABH37zzS5Viw1KXT40c9bv0=
Received: from imx12.toshiba.co.jp (imx12.toshiba.co.jp [61.202.160.132])
 by relay.securemx.jp (mx-mr1510) id 04M3KxZS038811;
 Fri, 22 May 2020 12:20:59 +0900
Received: from enc02.toshiba.co.jp ([61.202.160.51])
 by imx12.toshiba.co.jp  with ESMTP id 04M3KwbJ004263;
 Fri, 22 May 2020 12:20:58 +0900 (JST)
Received: from hop101.toshiba.co.jp ([133.199.85.107])
 by enc02.toshiba.co.jp  with ESMTP id 04M3KwHO019853;
 Fri, 22 May 2020 12:20:58 +0900
From: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
To: "Brown\, Aaron F" <aaron.f.brown@intel.com>
References: <20200515043127.3882162-1-punit1.agrawal@toshiba.co.jp>
 <DM6PR11MB2890F48ACD9A4ECF9181A819BCB70@DM6PR11MB2890.namprd11.prod.outlook.com>
Date: Fri, 22 May 2020 12:20:57 +0900
In-Reply-To: <DM6PR11MB2890F48ACD9A4ECF9181A819BCB70@DM6PR11MB2890.namprd11.prod.outlook.com>
 (Aaron F. Brown's message of "Thu, 21 May 2020 07:56:12 +0000")
X-TSB-HOP: ON
Message-ID: <87367sac4m.fsf@kokedama.swc.toshiba.co.jp>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Relax condition to trigger
 reset for ME workaround
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
Cc: "daniel.sangorrin@toshiba.co.jp" <daniel.sangorrin@toshiba.co.jp>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Aaron,

"Brown, Aaron F" <aaron.f.brown@intel.com> writes:

>> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
>> Behalf Of Punit Agrawal
>> Sent: Thursday, May 14, 2020 9:31 PM
>> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
>> Cc: daniel.sangorrin@toshiba.co.jp; Punit Agrawal
>> <punit1.agrawal@toshiba.co.jp>; Alexander Duyck
>> <alexander.h.duyck@linux.intel.com>; David S. Miller <davem@davemloft.net>;
>> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
>> kernel@vger.kernel.org
>> Subject: [PATCH] e1000e: Relax condition to trigger reset for ME workaround
>> 
>> It's an error if the value of the RX/TX tail descriptor does not match
>> what was written. The error condition is true regardless the duration
>> of the interference from ME. But the driver only performs the reset if
>> E1000_ICH_FWSM_PCIM2PCI_COUNT (2000) iterations of 50us delay have
>> transpired. The extra condition can lead to inconsistency between the
>> state of hardware as expected by the driver.
>> 
>> Fix this by dropping the check for number of delay iterations.
>> 
>> While at it, also make __ew32_prepare() static as it's not used
>> anywhere else.
>> 
>> Signed-off-by: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
>> Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
>> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
>> Cc: "David S. Miller" <davem@davemloft.net>
>> Cc: intel-wired-lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org
>> Cc: linux-kernel@vger.kernel.org
>> ---
>> Hi Jeff,
>> 
>> If there are no further comments please consider merging the patch.
>> 
>> Also, should it be marked for backport to stable?
>> 
>> Thanks,
>> Punit
>> 
>> RFC[0] -> v1:
>> * Dropped return value for __ew32_prepare() as it's not used
>> * Made __ew32_prepare() static
>> * Added tags
>> 
>> [0] https://lkml.org/lkml/2020/5/12/20
>> 
>>  drivers/net/ethernet/intel/e1000e/e1000.h  |  1 -
>>  drivers/net/ethernet/intel/e1000e/netdev.c | 12 +++++-------
>>  2 files changed, 5 insertions(+), 8 deletions(-)
>> 
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>

Thanks for taking the patch for a spin.

Jeff, let me know if you're okay to apply the tag or want me to send a
new version.

Thanks,
Punit

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
