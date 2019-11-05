Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97372EF4CB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2019 06:24:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 353FA8A41A;
	Tue,  5 Nov 2019 05:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2yqNIzNifDta; Tue,  5 Nov 2019 05:24:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EACD8A14B;
	Tue,  5 Nov 2019 05:24:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C5391BF38C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2019 05:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 086058944C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2019 05:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q94a5Ra7vVNO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2019 05:24:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from harmonic.fortimail.com (gw6018.fortimail.com [173.243.136.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 46CF98944B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2019 05:24:04 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2050.outbound.protection.outlook.com [104.47.33.50])
 by harmonic.fortimail.com  with ESMTP id xA55O1IK032676-xA55O1IM032676
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=CAFAIL);
 Mon, 4 Nov 2019 21:24:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fsJL4YFCSQ/JtRDcdL4NUnGKA5hw2O7iTNqwkS7jDjGWjPv0bvJCJrzWJduVoidN1w6gn9hD2HZyoB6OaBqrall1S0rpZUzFDbTy2Jx4LgYVT2MVi7qfCnk90+RkHpShvai/M5QoU+s3wbwtRR7WkS1hRjjxDDxxB9rZEAgTGdJaxMi5a+QOI4TV5w47l3imigaDiKa+ottCbEoXtfE8RjfspHO32ZyBzDkJLaXhuLmZW7iN9XjP3lo6sP9nnScFDd9KaQqW616TpAA2p/sTeqJY7sJ4pfXlXPtlRffMl9I8fdvgxWjrwUAh129PwDrRwPOQ1OIhdY9vHrl5j5gr9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G/amFIgKfQfQjGZFjKBemhYx+MGyVR/b7BbAS8fVqKI=;
 b=Sz0bp0ft1lGBLJEmBWDdKsT7STHrvllRtUDln7jvKWWXOsEQ3igemd1n24WlNa2kWAMlt8AvPk5v2gRiyvqVmGfEa9b0Fh40hVbXNWKX+eP7WoZG1pfSBrd2rE0G7IxAJ65qCGYGF5gDYj7buybG7tIookuOpg3Ph/dc0CUcnM8/rZLJNXGa9zl6UvOfT+spI706cTKurRJelzwIaUA5JYPzbMmn0B0m2TS1YmXTIDFqLjDmDxoTQRb5/0B5vIzwRgy4aGPtop6b1BBEkFF9vuoKY4xv5kOVOJ5RS7ShvK9xkP8fMU4rqXOewJPLJd63xc4HDas0+SwaJTkrIQ0mWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=harmonicinc.com; dmarc=pass action=none
 header.from=harmonicinc.com; dkim=pass header.d=harmonicinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=harmonicinc.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G/amFIgKfQfQjGZFjKBemhYx+MGyVR/b7BbAS8fVqKI=;
 b=B70I6v/x8ctyfcn7oKpd1dBQ3HhBocHjaaeaquQk7mnwb6TQ4umpCKasX/gdoqusTj/R7VaGBQv3yx0sm34w1D7oE+r6ZeXUSdh/VfztVVputuckKTte8puY/5l2vPbLB2Ieq5uJY45p3ra/TXctHte570o7dWO6g6i4K96+HYQ=
Received: from MWHPR11MB1805.namprd11.prod.outlook.com (10.175.56.14) by
 MWHPR11MB1344.namprd11.prod.outlook.com (10.169.233.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 05:24:00 +0000
Received: from MWHPR11MB1805.namprd11.prod.outlook.com
 ([fe80::b088:a289:bed5:850c]) by MWHPR11MB1805.namprd11.prod.outlook.com
 ([fe80::b088:a289:bed5:850c%8]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 05:23:59 +0000
From: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>
Thread-Topic: [EXTERNAL] RE: [PATCH net] i40e/iavf: Fix msg interface between
 VF and PF
Thread-Index: AQHVktE9LXQEe1tn8E2yMWCX6YmauKd7neLQgABu5AA=
Date: Tue, 5 Nov 2019 05:23:59 +0000
Message-ID: <1572931430.13810.227.camel@harmonicinc.com>
References: <1572845537.13810.225.camel@harmonicinc.com>
 <3508A0C5D531054DBDD98909F6FA64FA11B3936D@ORSMSX113.amr.corp.intel.com>
In-Reply-To: <3508A0C5D531054DBDD98909F6FA64FA11B3936D@ORSMSX113.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [87.69.44.145]
x-clientproxiedby: PR0P264CA0192.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1c::36) To MWHPR11MB1805.namprd11.prod.outlook.com
 (2603:10b6:300:114::14)
Authentication-Results: harmonic.fortimail.com;
 dkim=pass header.i=@harmonicinc.com
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=arkady.gilinsky@harmonicinc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Evolution 3.22.6-1+deb9u2 
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4f39e63c-b443-4ea6-d07a-08d761b05ca1
x-ms-traffictypediagnostic: MWHPR11MB1344:
x-microsoft-antispam-prvs: <MWHPR11MB1344185C23E152F7F2EB683AE27E0@MWHPR11MB1344.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(366004)(396003)(376002)(39850400004)(13464003)(199004)(189003)(26005)(2501003)(6116002)(64756008)(66556008)(2201001)(86362001)(386003)(305945005)(5660300002)(7736002)(76176011)(8936002)(256004)(8676002)(14444005)(66066001)(25786009)(102836004)(476003)(66476007)(52116002)(53546011)(66446008)(6246003)(50226002)(71200400001)(71190400001)(6436002)(81166006)(478600001)(6486002)(2906002)(3846002)(6512007)(229853002)(2616005)(4326008)(6506007)(186003)(103116003)(11346002)(446003)(486006)(44832011)(81156014)(14454004)(36756003)(66946007)(110136005)(99286004)(316002)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1344;
 H:MWHPR11MB1805.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: harmonicinc.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8dy2StvMheAuyrbPWDeltFt81ll206aqHUGX95qCAgLneF/1M8M+GzM0rGrUdDIj+qBnKSI97WkcMfiNqkLJpM547ig4mSrseRBbfPazLHL0k1hjm+sqC7VqREb4IZiy6qTZkCE71XmH6ABHsi17ouPenYA7jAy4SMZizTXvQlV5TXG7SIGe52T2ByinWj2Q0zoXOjVrTnk29AcOWmEFihuVG/eb0Pp4xA/8a00eTWy8ovt5HtwqjJvKQngg8ofYkyQ6o+GrzXHljZvjtB2vhCs+1zumFt6Kv2Y9fMJXuq+/ttHuEnj3l10qqtLbK3mGlzzLDOArJd3ig97QmuoANyU8LdnN5dz4+zoD5AmVw/me7T+CJlwwKQADQWLRJELmM/xSrd5Zo0viaAXNzsVJUE66HKBR4bb/Pej59OEeIFUdErjTGEmzSWfRFd2Yd5Pk
x-ms-exchange-transport-forked: True
Content-ID: <5C758732D18D4B499DD64C09F48BA44C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: harmonicinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f39e63c-b443-4ea6-d07a-08d761b05ca1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 05:23:59.7129 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 19294cf8-3352-4dde-be9e-7f47b9b6b73d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uiuhxuF66hwG6HaVG8O4uf6Oi+s+0j1jV0mxxgKeaGZ1RJ3ZU+jSE/HJD1+vISVml0PFY+IoF7URSapUCr6b/Xc6kGxm0dWFUkAB5DoVC/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1344
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

On Mon, 2019-11-04 at 23:43 +0000, Creeley, Brett wrote:
> > -----Original Message-----
> > From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On Be=
half Of Arkady Gilinsky
> > Sent: Sunday, November 3, 2019 9:32 PM
> > To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kirsher, =
Jeffrey T <jeffrey.t.kirsher@intel.com>
> > Cc: Arkady Gilinsky <arcadyg@gmail.com>
> > Subject: [PATCH net] i40e/iavf: Fix msg interface between VF and PF
> > =

> > From af5ab2aaa51882bb7111b026882fe217ed81c15b Mon Sep 17 00:00:00 2001
> > From: Arkady Gilinsky <arkady.gilinsky@harmonicinc
> > .com>
> > Date: Sun, 3 Nov 2019 20:37:21 +0200
> > Subject: [PATCH net] i40e/iavf: Fix msg interface between VF and PF
> > =

> > =A0* The original issue was that iavf driver passing TX/RX queues
> > =A0=A0=A0as bitmap in iavf_disable_queues and the i40e driver
> > =A0=A0=A0interprets this message as an absolute number in
> > =A0=A0=A0i40e_vc_disable_queues_msg, so the validation in the
> > =A0=A0=A0latter function always fail.
> =

> The VIRTCHNL interface expects the tx_queues and rx_queues to be sent as
> a bitmap so this should/can not be changed.
The fields [t|r]x_queues through whole driver code contains the number
and not bitmap (as far as I understand), so I thought that keeping=A0
this convention is more=A0important for better code readability,
saving in these fields something different is very confusing, IMHO,=A0
and potentially leads to such issues that this commit is trying to solve.
> =

> I think something like the following would be better becase the change is
> completely contained inside the i40e driver and it should completely
> address the issue you are seeing. Of course, this would have to be
> in both the enable and disable queue flow. Also, with this change it might
> be best to check and make sure the sizeof(vqs->[r|t]x_queues) equal
> sizeof(u32) in case those members ever change from u32 to u64, which
> will cause this check to always fail.
> =

> static bool i40e_vc_verify_vqs_bitmaps(struct virtchnl_queue_select *vqs)
> {
> 	/* this will catch any changes made to the virtchnl_queue_select bitmap =
*/
> 	if (sizeof(vqs->rx_queues) !=3D sizeof(u32) ||
> 	=A0=A0=A0=A0=A0sizeof(vqs->tx_queues) !=3D sizeof(u32))
> 		return false;
If so, then is it better to check the type of the fields in compile-time ra=
ther than in runtime ?
Something like this:
BUILD_BUG_ON(sizeof(vqs->rx_queues) !=3D sizeof(u32));
BUILD_BUG_ON(sizeof(vqs->tx_queues) !=3D sizeof(u32));
This is not required comparison each time when function is called and made =
code more optimized.
> =

> 	if ((vqs->rx_queues =3D=3D 0 && vqs->tx_queues =3D=3D 0) ||
> 	=A0=A0=A0=A0=A0=A0hweight32(vqs->rx_queues) > I40E_MAX_VF_QUEUES ||
> 	=A0=A0=A0=A0=A0=A0hweight32(vqs->tx_queues) > I40E_MAX_VF_QUEUES)
> 		return false;
Again, from optimization POV it is better to have constant changed than var=
iable,
since it is compile time and not run time action:
	if ((vqs->rx_queues =3D=3D 0 && vqs->tx_queues =3D=3D 0) ||
	=A0=A0=A0=A0=A0=A0vqs->rx_queues >=3D (BIT(I40E_MAX_VF_QUEUES)) ||
	=

=A0=A0=A0=A0=A0=A0vqs->tx_queues >=3D (BIT(I40E_MAX_VF_QUEUES)))
		return false;
> 	return true;
> }
> =

> if (i40e_vc_verify_vqs_bitmaps(vqs)) {
> 	aq_ret=A0=A0=3D I40E_ERR_PARAM;
> 	goto error_param;
> }
> =

> > =A0=A0=A0This commit reorganize the msg interface between i40e and iavf
> > =A0=A0=A0between the iavf_disable_queues and i40e_vc_disable_queues_msg
> > =A0=A0=A0functions (also for iavf_enable_queues and i40e_vc_enable_queu=
es_msg).
> > =A0=A0=A0Now both drivers operate with number of queues instead of
> > =A0=A0=A0bitmap. Also the commit introduces range check in
> > =A0=A0=A0i40e_vc_enable_queues_msg function.
> > =

> > Signed-off-by: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>
> > ---
> > =A0drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 23 ++++++++++++=
++++------
> > =A0drivers/net/ethernet/intel/iavf/iavf_virtchnl.c=A0=A0=A0=A0|=A0=A06 =
++++--
> > =A02 files changed, 21 insertions(+), 8 deletions(-)
> > =

> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drive=
rs/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > index 3d2440838822..c650eb91982a 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > @@ -2352,13 +2352,22 @@ static int i40e_vc_enable_queues_msg(struct i40=
e_vf *vf, u8 *msg)
> > =A0		goto error_param;
> > =A0	}
> > =

> > -	/* Use the queue bit map sent by the VF */
> > -	if (i40e_ctrl_vf_rx_rings(pf->vsi[vf->lan_vsi_idx], vqs->rx_queues,
> > +	if ((vqs->rx_queues =3D=3D 0 && vqs->tx_queues =3D=3D 0) ||
> > +	=A0=A0=A0=A0vqs->rx_queues > I40E_MAX_VF_QUEUES ||
> > +	=A0=A0=A0=A0vqs->tx_queues > I40E_MAX_VF_QUEUES) {
> > +		aq_ret =3D I40E_ERR_PARAM;
> > +		goto error_param;
> > +	}
> > +
> > +	/* Build the queue bit map from value sent by the VF */
> > +	if (i40e_ctrl_vf_rx_rings(pf->vsi[vf->lan_vsi_idx],
> > +				=A0=A0BIT(vqs->rx_queues) - 1,
> > =A0				=A0=A0true)) {
> > =A0		aq_ret =3D I40E_ERR_TIMEOUT;
> > =A0		goto error_param;
> > =A0	}
> > -	if (i40e_ctrl_vf_tx_rings(pf->vsi[vf->lan_vsi_idx], vqs->tx_queues,
> > +	if (i40e_ctrl_vf_tx_rings(pf->vsi[vf->lan_vsi_idx],
> > +				=A0=A0BIT(vqs->tx_queues) - 1,
> > =A0				=A0=A0true)) {
> > =A0		aq_ret =3D I40E_ERR_TIMEOUT;
> > =A0		goto error_param;
> > @@ -2416,13 +2425,15 @@ static int i40e_vc_disable_queues_msg(struct i4=
0e_vf *vf, u8 *msg)
> > =A0		goto error_param;
> > =A0	}
> > =

> > -	/* Use the queue bit map sent by the VF */
> > -	if (i40e_ctrl_vf_tx_rings(pf->vsi[vf->lan_vsi_idx], vqs->tx_queues,
> > +	/* Build the queue bit map from value sent by the VF */
> > +	if (i40e_ctrl_vf_tx_rings(pf->vsi[vf->lan_vsi_idx],
> > +				=A0=A0BIT(vqs->tx_queues) - 1,
> > =A0				=A0=A0false)) {
> > =A0		aq_ret =3D I40E_ERR_TIMEOUT;
> > =A0		goto error_param;
> > =A0	}
> > -	if (i40e_ctrl_vf_rx_rings(pf->vsi[vf->lan_vsi_idx], vqs->rx_queues,
> > +	if (i40e_ctrl_vf_rx_rings(pf->vsi[vf->lan_vsi_idx],
> > +				=A0=A0BIT(vqs->rx_queues) - 1,
> > =A0				=A0=A0false)) {
> > =A0		aq_ret =3D I40E_ERR_TIMEOUT;
> > =A0		goto error_param;
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/=
net/ethernet/intel/iavf/iavf_virtchnl.c
> > index c46770eba320..271f144bf05b 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> > @@ -308,7 +308,8 @@ void iavf_enable_queues(struct iavf_adapter *adapte=
r)
> > =A0	}
> > =A0	adapter->current_op =3D VIRTCHNL_OP_ENABLE_QUEUES;
> > =A0	vqs.vsi_id =3D adapter->vsi_res->vsi_id;
> > -	vqs.tx_queues =3D BIT(adapter->num_active_queues) - 1;
> > +	/* Send the queues number to PF */
> > +	vqs.tx_queues =3D adapter->num_active_queues;
> > =A0	vqs.rx_queues =3D vqs.tx_queues;
> > =A0	adapter->aq_required &=3D ~IAVF_FLAG_AQ_ENABLE_QUEUES;
> > =A0	iavf_send_pf_msg(adapter, VIRTCHNL_OP_ENABLE_QUEUES,
> > @@ -333,7 +334,8 @@ void iavf_disable_queues(struct iavf_adapter *adapt=
er)
> > =A0	}
> > =A0	adapter->current_op =3D VIRTCHNL_OP_DISABLE_QUEUES;
> > =A0	vqs.vsi_id =3D adapter->vsi_res->vsi_id;
> > -	vqs.tx_queues =3D BIT(adapter->num_active_queues) - 1;
> > +	/* Send the queues number to PF */
> > +	vqs.tx_queues =3D adapter->num_active_queues;
> > =A0	vqs.rx_queues =3D vqs.tx_queues;
> > =A0	adapter->aq_required &=3D ~IAVF_FLAG_AQ_DISABLE_QUEUES;
> > =A0	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DISABLE_QUEUES,
> > --
> > 2.11.0
> =

-- =

Best regards,
Arkady Gilinsky

------------------------------------------

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
