Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 918BC1EB89F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jun 2020 11:34:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 31B962078B;
	Tue,  2 Jun 2020 09:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h+-8Li9W3YPH; Tue,  2 Jun 2020 09:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 936BB226A2;
	Tue,  2 Jun 2020 09:34:39 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91C001BF27C
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jun 2020 09:34:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8C8CC88330
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jun 2020 09:34:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0sukljT3tPrT for <intel-wired-lan@osuosl.org>;
 Tue,  2 Jun 2020 09:34:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mo-csw.securemx.jp (mo-csw1116.securemx.jp [210.130.202.158])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B25DA8833F
 for <intel-wired-lan@osuosl.org>; Tue,  2 Jun 2020 09:34:34 +0000 (UTC)
Received: by mo-csw.securemx.jp (mx-mo-csw1116) id 0529YRFV032281;
 Tue, 2 Jun 2020 18:34:28 +0900
X-Iguazu-Qid: 2wHHbNmoGrVD5BjUjy
X-Iguazu-QSIG: v=2; s=0; t=1591090467; q=2wHHbNmoGrVD5BjUjy;
 m=fGRN8cn4/IOkrwM6DExYEVgmltT7yxB7gW2NkJIsq9c=
Received: from imx2.toshiba.co.jp (imx2.toshiba.co.jp [106.186.93.51])
 by relay.securemx.jp (mx-mr1112) id 0529YQGa028570;
 Tue, 2 Jun 2020 18:34:27 +0900
Received: from enc01.localdomain ([106.186.93.100])
 by imx2.toshiba.co.jp  with ESMTP id 0529YQsR012900;
 Tue, 2 Jun 2020 18:34:26 +0900 (JST)
Received: from hop001.toshiba.co.jp ([133.199.164.63])
 by enc01.localdomain  with ESMTP id 0529YQEO014942;
 Tue, 2 Jun 2020 18:34:26 +0900
From: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
To: "Avivi\, Amir" <amir.avivi@intel.com>
References: <mailman.9577.1590117676.59095.intel-wired-lan@osuosl.org>
 <7cdf1300-973e-6950-8146-d0481661b98b@intel.com>
Date: Tue, 02 Jun 2020 18:34:25 +0900
In-Reply-To: <7cdf1300-973e-6950-8146-d0481661b98b@intel.com> (Amir Avivi's
 message of "Tue, 2 Jun 2020 10:13:00 +0300")
X-TSB-HOP: ON
Message-ID: <87367d7qvy.fsf@kokedama.swc.toshiba.co.jp>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Amir,

"Avivi, Amir" <amir.avivi@intel.com> writes:

[...]

> Subject: [PATCH] e1000e: Relax condition to trigger reset for ME workaround
>
> It's an error if the value of the RX/TX tail descriptor does not match
> what was written. The error condition is true regardless the duration
> of the interference from ME. But the driver only performs the reset if
> E1000_ICH_FWSM_PCIM2PCI_COUNT (2000) iterations of 50us delay have
> transpired. The extra condition can lead to inconsistency between the
> state of hardware as expected by the driver.
>
> Fix this by dropping the check for number of delay iterations.
>
> While at it, also make __ew32_prepare() static as it's not used
> anywhere else.
>
> Signed-off-by: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
> Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
> Hi Jeff,
>
> If there are no further comments please consider merging the patch.
>
> Also, should it be marked for backport to stable?
>
> Thanks,
> Punit
>
> RFC[0] -> v1:
> * Dropped return value for __ew32_prepare() as it's not used
> * Made __ew32_prepare() static
> * Added tags
>
> [0] https://lkml.org/lkml/2020/5/12/02
>
>  drivers/net/ethernet/intel/e1000e/e1000.h  |  1 -
>  drivers/net/ethernet/intel/e1000e/netdev.c | 12 +++++-------
>  2 files changed, 5 insertions(+), 8 deletions(-)
>
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>
>
> Thanks for taking the patch for a spin.
>
> Jeff, let me know if you're okay to apply the tag or want me to send a
> new version.
>
> Hi Punit,
> This patch appears to be effecting some legacy code effecting old
> hardware.

Indeed. The problem under investigation was reported on a machine
released ~2012 I think.

> We tried applying it but we could not get the driver to run the
> changed code lines.
> Please provide some test hints(What platforms did
> you check it on?  What tests did you run?) regarding this patch.

As mentioned in the original posting[0], the patch was based on code
investigation.

A backported version of the patch is running on a really old kernel
(2.6.x) and we haven't found any way to speed up reproduction - it takes
O(weeks) to hit the issue in the test environment.

[0] https://lkml.org/lkml/2020/5/12/20

[...]

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
