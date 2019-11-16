Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9F2FEA47
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Nov 2019 03:43:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF38F20493;
	Sat, 16 Nov 2019 02:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UaU3CEOXpp32; Sat, 16 Nov 2019 02:43:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D179D2075B;
	Sat, 16 Nov 2019 02:43:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A76A1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2019 02:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D431D204B3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2019 02:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YyeQraKswf7m for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Nov 2019 02:43:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 8049520493
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2019 02:43:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 18:43:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,310,1569308400"; d="scan'208";a="195573070"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga007.jf.intel.com with ESMTP; 15 Nov 2019 18:43:19 -0800
Received: from orsmsx114.amr.corp.intel.com ([169.254.8.67]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.224]) with mapi id 14.03.0439.000;
 Fri, 15 Nov 2019 18:43:19 -0800
From: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
To: "Bowers, AndrewX" <andrewx.bowers@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select
 bitmap validation
Thread-Index: AQHVmliJTvRran1eoUyUsHMyoVqbKKeL9jwAgAF6wgCAAARngP//pR6t
Date: Sat, 16 Nov 2019 02:43:18 +0000
Message-ID: <9C221CD4-702F-4A6F-8475-2A67012ADD10@intel.com>
References: <20191113192817.531297-1-jeffrey.t.kirsher@intel.com>
 <d05e40a7ad5246cdba8f63a6825ce9d9@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971758C2@ORSMSX103.amr.corp.intel.com>,
 <897250446bee4cdc987a9478db97873a@intel.com>
In-Reply-To: <897250446bee4cdc987a9478db97873a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select
 bitmap validation
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
Cc: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Arkady Gilinksky <arkady.gilinsky@harmonicinc.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Brett is out on vacation but you=92re right Andrew, the code should use plu=
ral variables. =


--
Jesse Brandeburg


> On Nov 15, 2019, at 16:08, Bowers, AndrewX <andrewx.bowers@intel.com> wro=
te:
> =

> I was getting the same thing. Taking the compiler's suggestion and changi=
ng _queue to _queues and it compiles but nobody responded to my comments. =

> =

>> -----Original Message-----
>> From: Brown, Aaron F
>> Sent: Friday, November 15, 2019 3:53 PM
>> To: Bowers, AndrewX <andrewx.bowers@intel.com>; Kirsher, Jeffrey T
>> <jeffrey.t.kirsher@intel.com>; intel-wired-lan@lists.osuosl.org
>> Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady Gilinksky
>> <arkady.gilinsky@harmonicinc.com>
>> Subject: RE: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select b=
itmap
>> validation
>> =

>> This patch is causing a compile error for me.  If I pop revert it my com=
pile
>> error goes away:
>> ---------------------------------------------------------------
>> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c: In function
>> 'i40e_vc_validate_vqs_bitmaps':
>> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:2333:9: error: 'struct
>> virtchnl_queue_select' has no member named 'rx_queue'
>>      vqs->rx_queue >=3D BIT(I40E_MAX_VF_QUEUES) ||
>>         ^
>> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:2334:9: error: 'struct
>> virtchnl_queue_select' has no member named 'tx_queue'
>>      vqs->tx_queue >=3D BIT(I40E_MAX_VF_QUEUES))
>>         ^
>> make[6]: *** [drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.o] Error 1
>> make[6]: *** Waiting for unfinished jobs....
>> make[5]: *** [drivers/net/ethernet/intel/i40e] Error 2
>> make[4]: *** [drivers/net/ethernet/intel] Error 2
>> make[4]: *** Waiting for unfinished jobs....
>> make[3]: *** [drivers/net/ethernet] Error 2
>> make[2]: *** [drivers/net] Error 2
>> make[1]: *** [drivers] Error 2
>> make: *** [sub-make] Error 2
>> =

>>> -----Original Message-----
>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>>> Of Bowers, AndrewX
>>> Sent: Thursday, November 14, 2019 5:17 PM
>>> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-
>>> lan@lists.osuosl.org
>>> Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady Gilinksky
>>> <arkady.gilinsky@harmonicinc.com>
>>> Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select
>>> bitmap validation
>>> =

>>> Comments inline
>>> =

>>>> -----Original Message-----
>>>> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
>>>> Behalf Of Jeff Kirsher
>>>> Sent: Wednesday, November 13, 2019 11:28 AM
>>>> To: intel-wired-lan@lists.osuosl.org
>>>> Cc: Creeley, Brett <brett.creeley@intel.com>; Arkady Gilinksky
>>>> <arkady.gilinsky@harmonicinc.com>
>>>> Subject: [Intel-wired-lan] [PATCH] i40e: Fix virtchnl_queue_select
>>>> bitmap validation
>>>> =

>>>> From: Brett Creeley <brett.creeley@intel.com>
>>>> =

>>>> Currently in i40e_vc_disable_queues_msg() we are incorrectly
>>>> validating
>>> the
>>>> virtchnl queue select bitmaps. The virtchnl_queue_select rx_queues
>>>> and tx_queue bitmap is being compared against ICE_MAX_VF_QUEUES,
>> but
>>> the
>>>> problem is that these bitmaps can have a value greater than
>>>> I40E_MAX_VF_QUEUES.
>>>> Fix this by comparing the bitmaps against BIT(I40E_MAX_VF_QUEUES).
>>>> =

>>>> Also, add the function i40e_vc_validate_vqs_bitmaps() that checks to
>>>> see if both virtchnl_queue_select bitmaps are empty along with
>>>> checking that
>>> the
>>>> bitmaps only have valid bits set. This function can then be used in
>>>> both the queue enable and disable flows.
>>>> =

>>>> Suggested-by: Arkady Gilinksky <arkady.gilinsky@harmonicinc.com>
>>>> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
>>>> ---
>>>> .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 22 +++++++++++++++----
>>>> 1 file changed, 18 insertions(+), 4 deletions(-)
>>>> =

>> <snip>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
