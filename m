Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAE7A1BCF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2019 15:49:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89FD287FFB;
	Thu, 29 Aug 2019 13:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YSv8WNdLG9IX; Thu, 29 Aug 2019 13:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 767DE881A0;
	Thu, 29 Aug 2019 13:49:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AAE831BF299
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2019 13:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A681E835D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2019 13:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Km_JV0GZB1Oz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2019 13:49:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C1AE7835CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2019 13:49:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 06:49:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,443,1559545200"; d="scan'208";a="185975334"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by orsmga006.jf.intel.com with ESMTP; 29 Aug 2019 06:49:41 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.21]) by
 IRSMSX152.ger.corp.intel.com ([169.254.6.191]) with mapi id 14.03.0439.000;
 Thu, 29 Aug 2019 14:49:40 +0100
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, "Michael, Alice"
 <alice.michael@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S9 1/7] i40e: Allow updating
 OROM when a NIC is in recovery mode
Thread-Index: AQHVXDpzq/PVKxXJe0mLjttKOfNCHacPSZoAgALdnzA=
Date: Thu, 29 Aug 2019 13:49:39 +0000
Message-ID: <D4D6338F2E4CB34CB91C5312C72AAC810F0C9A@IRSMSX104.ger.corp.intel.com>
References: <20190826181655.15106-1-alice.michael@intel.com>
 <92972e00895820ebefa9c2b1b582db0adaf801db.camel@intel.com>
In-Reply-To: <92972e00895820ebefa9c2b1b582db0adaf801db.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzg1NjM4NTItMjk3Mi00ODc2LWIxZDUtN2Y2NmU1NjBiMjVmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicllkVnJPaHNndCtaZUZVVms0RGF2Q1pONk5EZUNFVDBrMUJic0kxYjFMUmR1VktwMHZlSDFSMXRiemkwNFwvVSsifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S9 1/7] i40e: Allow updating OROM
 when a NIC is in recovery mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


-----Original Message-----
> From: Kirsher, Jeffrey T 
> Sent: Tuesday, August 27, 2019 8:58 PM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> Subject: Re: [Intel-wired-lan] [next PATCH S9 1/7] i40e: Allow updating OROM when a NIC is in recovery mode
>
> On Mon, 2019-08-26 at 11:16 -0700, Alice Michael wrote:
> > From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> > 
> > Allow OROM update with nvmupdate tool when a NIC is in recovery mode.
> > Implemented by not exiting a recovery mode after firmware EMP reset 
> > and before actual OROM update.
> > Previously it was not possible to do the OROM update with nvmupdate 
> > tool.
>
> Should we be referencing our nvmupdate tool?  Is there a plan to integrate this functionality into the existing ethtool interface to update EEPROM's?

Right, we should not reference it and there is no integration plan. I'll change it.

> > 
> > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index a71369546c23..ed8e62cb5417 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -14559,8 +14559,8 @@ static bool i40e_check_recovery_mode(struct 
> > i40e_pf *pf)
> >  
> >  		return true;
> >  	}
> > -	if (test_and_clear_bit(__I40E_RECOVERY_MODE, pf->state))
> > -		dev_info(&pf->pdev->dev, "Reinitializing in normal mode
> > with full functionality.\n");
> > +	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
> > +		dev_info(&pf->pdev->dev, "Please do POR to initialize
> > adapter in normal mode with full functionality.\n");
>
> POR?  What does that stand for?  Is there is a reason we are using a cryptic acronym in what is supposed to be a useful debug message to the end-user?
>
> FYI, common definitions for POR are "Plan of Record" or "Provided on Request", but neither of those make much sense in this debug message.

I'll also fix this message.

> >  
> >  	return false;
> >  }

--------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek
przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by
others is strictly prohibited.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
