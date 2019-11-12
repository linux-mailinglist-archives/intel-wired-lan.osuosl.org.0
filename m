Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCAFF89BF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2019 08:33:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE33F86C0E;
	Tue, 12 Nov 2019 07:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0oxVX2gD8jLA; Tue, 12 Nov 2019 07:33:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53DB0861F4;
	Tue, 12 Nov 2019 07:33:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3CD741BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 07:33:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 09C66854D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 07:33:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3mrYQFHMKHQi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2019 07:33:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from harmonic.fortimail.com (gw6018.fortimail.com [173.243.136.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0438885C45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 07:33:35 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-cys01nam02lp2055.outbound.protection.outlook.com [104.47.37.55])
 by harmonic.fortimail.com  with ESMTP id xAC7XWn3027967-xAC7XWn5027967
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=CAFAIL);
 Mon, 11 Nov 2019 23:33:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=leoIO5xC219uidAtPqnhx3Bk/WWxG0Dwl+mdiBddWEycBNuSL6xNSXaOEfhhXpJ3T1H6fwipRC1IkmdOocnaWasH0nSlMD1+altNeJk5yCW23qyDJHuUdZtSBrrjCqlXRT9gziccwwY6WldFMAUNq/yHCc+TsmkEuPnT/un9Q8mKIfRJIHqBGh0JAkgDinU1xsOoid3vj8czmshFnBxFaX1/ckC6En5LRpXgMUY3NmxJ56D9PLcXeTxRhWQOCXlrCKl79zTvwg/hhEw2PiobM0PGufWiY/guYK8ZjJ2Q22WTDEZt/WQ4NsP9QjeGmFUjTcE34y1jUn9FoqQ5EUbhSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7VkL92cXziFw6sJr2ZbGsmk5/rxls+5ywLVXhsj7OO8=;
 b=lMt2OQ0tahBFdwDW5YgFdwl4uuNJgymZy9Shyx3pvp4vvyIb2N+axn3mG+OgaxwbinjenfOPlY8I/Ckrh2V7EXnWmeK8L+nMyqakKqzo2O2gbyk2EU3zc4XTUX3M3K17Q9GVivbbYNtLK15+rdD+2xYosmvTJ5fdaRuBO2zvoRN2K5ei6bd5Sp8VTZtuN6W/Ws2BtEFxxQ9Bhv14BlRz8MHcTgcSpizFQcR3/RQz8kVRTA8JDpc8tq/N+uEMf0wzPM4KTyRPYQ7Mp5m/PbyJNo3zvH+zNIzcp5x4Y7bxkx+ddip3qEcGerNDmSYuTf0Mkuly7RM5QU+kpSu+UhCjKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=harmonicinc.com; dmarc=pass action=none
 header.from=harmonicinc.com; dkim=pass header.d=harmonicinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=harmonicinc.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7VkL92cXziFw6sJr2ZbGsmk5/rxls+5ywLVXhsj7OO8=;
 b=iSBBAhpSho15v8TGYjeYNxSRgnracC5xg/t86A59Qr+hit7vP4b95deTI1zpzHrR/RSrXaFkLlWfAtnUW0gLoX/L7j2hIyRP+fmw4vqRM42zJhGMLW0tvlBkZKa+94RkguR3+DLH92PAhqGwS4oP/xBts/IWwMtA1pV9VpKEWtQ=
Received: from MWHPR11MB1805.namprd11.prod.outlook.com (10.175.56.14) by
 MWHPR11MB1280.namprd11.prod.outlook.com (10.169.237.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.23; Tue, 12 Nov 2019 07:33:31 +0000
Received: from MWHPR11MB1805.namprd11.prod.outlook.com
 ([fe80::b088:a289:bed5:850c]) by MWHPR11MB1805.namprd11.prod.outlook.com
 ([fe80::b088:a289:bed5:850c%8]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 07:33:31 +0000
From: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>
To: "Creeley, Brett" <brett.creeley@intel.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg interface between
 VF and PF
Thread-Index: AQHVktE9LXQEe1tn8E2yMWCX6YmauKd7neLQgABu5ACAALtz8IAA2KwAgAJ/c4CAAWFaAIAFr5cA
Date: Tue, 12 Nov 2019 07:33:30 +0000
Message-ID: <1573544002.10368.34.camel@harmonicinc.com>
References: <1572845537.13810.225.camel@harmonicinc.com>
 <3508A0C5D531054DBDD98909F6FA64FA11B3936D@ORSMSX113.amr.corp.intel.com>
 <1572931430.13810.227.camel@harmonicinc.com>
 <3508A0C5D531054DBDD98909F6FA64FA11B39863@ORSMSX113.amr.corp.intel.com>
 <1573018214.10368.1.camel@harmonicinc.com>
 <d078d3efc784805a67ba1a1c6e94fb4ec1c0aec6.camel@intel.com>
 <3508A0C5D531054DBDD98909F6FA64FA11B3EB75@ORSMSX113.amr.corp.intel.com>
In-Reply-To: <3508A0C5D531054DBDD98909F6FA64FA11B3EB75@ORSMSX113.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [37.142.125.24]
x-clientproxiedby: PR0P264CA0068.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1d::32) To MWHPR11MB1805.namprd11.prod.outlook.com
 (2603:10b6:300:114::14)
Authentication-Results: harmonic.fortimail.com;
 dkim=pass header.i=@harmonicinc.com
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=arkady.gilinsky@harmonicinc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Evolution 3.22.6-1+deb9u2 
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a33b08b7-4711-46fd-ba0d-08d767429d8b
x-ms-traffictypediagnostic: MWHPR11MB1280:
x-microsoft-antispam-prvs: <MWHPR11MB128047253A6880963900B261E2770@MWHPR11MB1280.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39850400004)(136003)(346002)(366004)(376002)(53754006)(189003)(199004)(13464003)(103116003)(6512007)(2616005)(476003)(2501003)(446003)(2201001)(6486002)(64756008)(66066001)(6506007)(66476007)(66556008)(53546011)(66446008)(386003)(52116002)(76176011)(66946007)(5660300002)(186003)(229853002)(11346002)(102836004)(6116002)(6436002)(3846002)(99286004)(14444005)(25786009)(110136005)(256004)(26005)(478600001)(8936002)(36756003)(14454004)(6246003)(44832011)(2906002)(8676002)(7736002)(305945005)(4326008)(71200400001)(486006)(81156014)(81166006)(71190400001)(50226002)(86362001)(316002)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1280;
 H:MWHPR11MB1805.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: harmonicinc.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oMw1l31RiXZqbBVY0jw7/v5DcG3ijE+r2sY+mpo4UZxfA6uGHyHy/aNjw9jfSOvBADzh8xll6gpiI/Wu0YmNcvYiW8zBS1yZqYIbZe3sB2QoASntsoztIAhRp4C2WGzRnkmFCwXDpAV+7blXjdYNbEZHXvs8p/Iu78BK+qO+cLcw4jv3D0eA3+c1wxViFHRutwz71SY9D78Q/gb9x/on3kYOtmWlBm1qdFe2iiAxnjraZPMhSItBXyiRSEcQlgSay+mFZO962xRGkEW0uiW+OEkKmyREoaf21Ao/wSsg9Ku08vHNyz1sorrC2Mx526U14kFGPxjQze3nLBe+16XX3Zy0efzUWyeLFoz6L3mQNCOcTfcTA2BEExu5BqQHKXKmTO6TUid2x6kwiuTXcfFDBJ1Jr0GPoi5ZeRL+jVzURqf1oN2T0KLQ33TGcwzX1LnV
x-ms-exchange-transport-forked: True
Content-ID: <2AD84A027BAB5C4DB2F541D3BC8877E3@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: harmonicinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a33b08b7-4711-46fd-ba0d-08d767429d8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 07:33:30.8515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 19294cf8-3352-4dde-be9e-7f47b9b6b73d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B14BTLE06YqyxymbKqJtDhxTfTPHG4CmBw4j6h7iQ9cCa88yHezmMR8Y6DHIHlWoHIW6HOS0OZkcXoQicqdZUB0OhpuAAGyusXP7mGEpajk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1280
X-FEAS-DKIM: Valid
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi All,

Jeffrey/Brett: I did re-submit the patch as "[v2,net] i40e/iavf: Fix msg in=
terface between VF and PF"
Please review.

On Fri, 2019-11-08 at 16:43 +0000, Creeley, Brett wrote:
> > -----Original Message-----
> > From: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> > Sent: Thursday, November 7, 2019 11:39 AM
> > To: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>; Creeley, Brett <=
brett.creeley@intel.com>; intel-wired-lan@lis
> > ts.osuosl.org;
> > netdev@vger.kernel.org
> > Cc: Arkady Gilinsky <arcadyg@gmail.com>
> > Subject: Re: [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg interface be=
tween VF and PF
> > =

> > On Wed, 2019-11-06 at 05:30 +0000, Arkady Gilinsky wrote:
> > > On Tue, 2019-11-05 at 16:55 +0000, Creeley, Brett wrote:
> > > > > -----Original Message-----
> > > > > From: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>
> > > > > Sent: Monday, November 4, 2019 9:24 PM
> > > > > To: Creeley, Brett <brett.creeley@intel.com>;
> > > > > intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kirsher,
> > > > > Jeffrey T
> > > > > <jeffrey.t.kirsher@intel.com>
> > > > > Cc: Arkady Gilinsky <arcadyg@gmail.com>
> > > > > Subject: Re: [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg interf=
ace
> > > > > between VF and PF
> > > > > > static bool i40e_vc_verify_vqs_bitmaps(struct virtchnl_queue_se=
lect
> > > > > > *vqs)
> > > > > > {
> > > > > > =A0=A0=A0/* this will catch any changes made to the virtchnl_qu=
eue_select
> > > > > > bitmap */
> > > > > > =A0=A0=A0if (sizeof(vqs->rx_queues) !=3D sizeof(u32) ||
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0sizeof(vqs->tx_queues) !=3D sizeof(u32))
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return false;
> > > > > =

> > > > > If so, then is it better to check the type of the fields in compi=
le-
> > > > > time rather than in runtime ?
> > > > > Something like this:
> > > > > BUILD_BUG_ON(sizeof(vqs->rx_queues) !=3D sizeof(u32));
> > > > > BUILD_BUG_ON(sizeof(vqs->tx_queues) !=3D sizeof(u32));
> > > > > This is not required comparison each time when function is called=
 and
> > > > > made code more optimized.
> > > > =

> > > > I don't think this is required with the change you suggested below.
> > > =

> > > Agree.
> > > If other code in driver not need to be adjusted/verified, then this c=
heck
> > > is not needed.
> > > > > > =A0=A0=A0if ((vqs->rx_queues =3D=3D 0 && vqs->tx_queues =3D=3D =
0) ||
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0hweight32(vqs->rx_queues) > I40E_MAX=
_VF_QUEUES ||
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0hweight32(vqs->tx_queues) > I40E_MAX=
_VF_QUEUES)
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return false;
> > > > > =

> > > > > Again, from optimization POV it is better to have constant changed
> > > > > than variable,
> > > > > since it is compile time and not run time action:
> > > > > =A0=A0=A0=A0=A0if ((vqs->rx_queues =3D=3D 0 && vqs->tx_queues =3D=
=3D 0) ||
> > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0vqs->rx_queues >=3D (BIT(I40E_MA=
X_VF_QUEUES)) ||
> > > > > =

> > > > > =A0=A0=A0=A0=A0=A0vqs->tx_queues >=3D (BIT(I40E_MAX_VF_QUEUES)))
> > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return false;
> > > > =

> > > > This seems much better than my solution. It fixes the original issu=
e,
> > > > handles if the
> > > > vqs->[r|t]x_queues variables have changed in size, and the queue bi=
tmap
> > > > comparison
> > > > uses a constant. Thanks!
> > > =

> > > Thanks to you for feedback.
> > > I am trying to understand if this patch will enter into official kern=
el
> > > tree
> > > and, not less important from my POV, to official Intel drivers.
> > > Brett/Jeffrey, could you, please, assist to make sure that this fix, =
or
> > > fix suggested by Brett,
> > > will be integrated into Intel i40e/iavf drivers ?
> > > Or may be I should write mail straight to Intel support ?
> > =

> > As Brett pointed out, there are issues with this patch. Please make the
> > suggested changes and re-submit the patch to
> > intel-wired-lan@lists.osuosl.org
> =

> Jeff/Arkady: I have already submitted patches for this internally for
> official Intel drivers. Apologies for the delayed response.
-- =

Best regards,
Arkady Gilinsky

------------------------------------------

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
