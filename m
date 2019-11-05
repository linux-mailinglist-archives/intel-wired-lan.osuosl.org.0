Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA48F0381
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2019 17:55:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EB6288ED0;
	Tue,  5 Nov 2019 16:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zjkghIUMsbwJ; Tue,  5 Nov 2019 16:55:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEF5288ED1;
	Tue,  5 Nov 2019 16:55:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16E431BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2019 16:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 11D6288ECB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2019 16:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YMv_l9LuiBAo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2019 16:55:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C9A8688765
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2019 16:55:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 08:55:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="205035243"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga003.jf.intel.com with ESMTP; 05 Nov 2019 08:55:33 -0800
Received: from orsmsx122.amr.corp.intel.com (10.22.225.227) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 5 Nov 2019 08:55:33 -0800
Received: from orsmsx113.amr.corp.intel.com ([169.254.9.28]) by
 ORSMSX122.amr.corp.intel.com ([169.254.11.32]) with mapi id 14.03.0439.000;
 Tue, 5 Nov 2019 08:55:33 -0800
From: "Creeley, Brett" <brett.creeley@intel.com>
To: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>
Thread-Topic: [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg interface
 between VF and PF
Thread-Index: AQHVktE9LXQEe1tn8E2yMWCX6YmauKd7neLQgABu5ACAALtz8A==
Date: Tue, 5 Nov 2019 16:55:32 +0000
Message-ID: <3508A0C5D531054DBDD98909F6FA64FA11B39863@ORSMSX113.amr.corp.intel.com>
References: <1572845537.13810.225.camel@harmonicinc.com>
 <3508A0C5D531054DBDD98909F6FA64FA11B3936D@ORSMSX113.amr.corp.intel.com>
 <1572931430.13810.227.camel@harmonicinc.com>
In-Reply-To: <1572931430.13810.227.camel@harmonicinc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2JkM2UyZWEtNzM1Yi00N2I3LWE3M2EtMzBiNmE5NTc1MDc1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiN2ZKcjhWRllLblNwWmtObG1WNE5KNWdcL3JlRmgzd2pJbGpHMVNlK1U4ZXh1ZVpiSkRNWGdIY1pkOEk2MEx6QjIifQ==
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg
 interface between VF and PF
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
Cc: Arkady Gilinsky <arcadyg@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>
> Sent: Monday, November 4, 2019 9:24 PM
> To: Creeley, Brett <brett.creeley@intel.com>; intel-wired-lan@lists.osuos=
l.org; netdev@vger.kernel.org; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>
> Cc: Arkady Gilinsky <arcadyg@gmail.com>
> Subject: Re: [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg interface betw=
een VF and PF
> > static bool i40e_vc_verify_vqs_bitmaps(struct virtchnl_queue_select *vq=
s)
> > {
> > 	/* this will catch any changes made to the virtchnl_queue_select bitma=
p */
> > 	if (sizeof(vqs->rx_queues) !=3D sizeof(u32) ||
> > 	=A0=A0=A0=A0=A0sizeof(vqs->tx_queues) !=3D sizeof(u32))
> > 		return false;
> If so, then is it better to check the type of the fields in compile-time =
rather than in runtime ?
> Something like this:
> BUILD_BUG_ON(sizeof(vqs->rx_queues) !=3D sizeof(u32));
> BUILD_BUG_ON(sizeof(vqs->tx_queues) !=3D sizeof(u32));
> This is not required comparison each time when function is called and mad=
e code more optimized.

I don't think this is required with the change you suggested below.

> >
> > 	if ((vqs->rx_queues =3D=3D 0 && vqs->tx_queues =3D=3D 0) ||
> > 	=A0=A0=A0=A0=A0=A0hweight32(vqs->rx_queues) > I40E_MAX_VF_QUEUES ||
> > 	=A0=A0=A0=A0=A0=A0hweight32(vqs->tx_queues) > I40E_MAX_VF_QUEUES)
> > 		return false;
> Again, from optimization POV it is better to have constant changed than v=
ariable,
> since it is compile time and not run time action:
> 	if ((vqs->rx_queues =3D=3D 0 && vqs->tx_queues =3D=3D 0) ||
> 	=A0=A0=A0=A0=A0=A0vqs->rx_queues >=3D (BIT(I40E_MAX_VF_QUEUES)) ||
> =

> =A0=A0=A0=A0=A0=A0vqs->tx_queues >=3D (BIT(I40E_MAX_VF_QUEUES)))
> 		return false;

This seems much better than my solution. It fixes the original issue, handl=
es if the
vqs->[r|t]x_queues variables have changed in size, and the queue bitmap com=
parison
uses a constant. Thanks!

> > 	return true;
> > }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
