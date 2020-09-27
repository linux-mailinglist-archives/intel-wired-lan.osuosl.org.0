Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0EC27A06E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Sep 2020 12:10:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DE8485CCF;
	Sun, 27 Sep 2020 10:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uQ2-P06tfsvd; Sun, 27 Sep 2020 10:10:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2105860CE;
	Sun, 27 Sep 2020 10:10:21 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64BA41BF46A
 for <intel-wired-lan@osuosl.org>; Sun, 27 Sep 2020 10:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D5E485CCF
 for <intel-wired-lan@osuosl.org>; Sun, 27 Sep 2020 10:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fpBWAm40Uk+E for <intel-wired-lan@osuosl.org>;
 Sun, 27 Sep 2020 10:10:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from harmonic.fortimail.com (gw6018.fortimail.com [173.243.136.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9720A85B36
 for <intel-wired-lan@osuosl.org>; Sun, 27 Sep 2020 10:10:19 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
 by harmonic.fortimail.com  with ESMTP id 08RAAIbV023707-08RAAIbX023707
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=CAFAIL)
 for <intel-wired-lan@osuosl.org>; Sun, 27 Sep 2020 03:10:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mf8CTaI/TQ/mPjCp+JcPM4VG97hL+fUjTRk4eheLL5l0EcI+zh6geTRNkoDfxaVmT0cybykQArtINjzJqjo8OiAhSiixzvujIac6yEZqcZBWUSMfPOzLU7isVqRveLFD1zw7kim5Ltb/0VQxGUfl4BLoE6ulvLSplXhmj1/XNHxsJFAZmosNfifF8hoEZDRSzWLTC+fDW4SfjzmhQ+YJCYTY6EwLQasrh/dtJOkPXzC4cwYNyj18nFFtyRR56IyUuVmoAsP4EnNTDGh+f/thihaKPBuGf/QmKn4hVp6eAhNhZLw5FeWFbPY2BGZXXECQg8IAQKED8k6xpsmtPBKFTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gzBJNLaO1FaxsL06e8HX0qFwaEP/qMLcldti+cj/1Ak=;
 b=Wkhfls5d+Pj1V0dcA7XLhkdDFTx9981J9wilEO2yX2cMdxwW9W+m9JVPWCUy5MPK0XOrlBxK2siH1f5KyW7OIn45gvW1iooON7m3oAD7FLd5zdeLsaic3kw1DFbCUJdc7GD/8yXCPIZzrTlUdGBpnRArIanUHFGmLep5lm8voKhuKh7AEJf9m7RF25klb9zaWkmXd1KRre3D7sKHPe0/il+kMZ543JbxFGTcE3fBjIi9TGfQPg5vt6+st/DA/fo+ql3o97WknulUiTdhjEG58xTnIhEvrvbumQRaRtW1eAGhMe1ERMfFAWUStDMQ+we1MfrJq0JCWiFcE77UzcA5Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=harmonicinc.com; dmarc=pass action=none
 header.from=harmonicinc.com; dkim=pass header.d=harmonicinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=harmonicinc.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gzBJNLaO1FaxsL06e8HX0qFwaEP/qMLcldti+cj/1Ak=;
 b=imNBf/rRq5xR62at8kdR/5l8pkDK4kT7PwO14RTBkgkl02kiXuBjzJQ7oy5C2T7WNjOm4O3/wvFLiyv8IfkedNn9Ez0cRan/HaKuGDDkdnqY+e8RcFvsIRRA4eT1dPT+yrNXMcLdxnMUR215mMgjO+T+yKcDtD58eH8XtDHXFj0=
Received: from BY5PR11MB4152.namprd11.prod.outlook.com (2603:10b6:a03:191::11)
 by BYAPR11MB2631.namprd11.prod.outlook.com (2603:10b6:a02:be::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.23; Sun, 27 Sep
 2020 10:10:17 +0000
Received: from BY5PR11MB4152.namprd11.prod.outlook.com
 ([fe80::ccc8:f5a7:5944:d9be]) by BY5PR11MB4152.namprd11.prod.outlook.com
 ([fe80::ccc8:f5a7:5944:d9be%5]) with mapi id 15.20.3391.028; Sun, 27 Sep 2020
 10:10:16 +0000
From: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: i40e: Function i40e_set_max_tx_rate can exit without cleaning
 pending state
Thread-Index: AQHWlLZll2+h+hH5g0KncQIKGsux8w==
Date: Sun, 27 Sep 2020 10:10:16 +0000
Message-ID: <fb7b00be5e73657deb6212a36a491d4f443165da.camel@harmonicinc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
Authentication-Results: harmonic.fortimail.com;
 dkim=pass header.i=@harmonicinc.com
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none; osuosl.org; dmarc=none action=none header.from=harmonicinc.com; 
x-originating-ip: [84.94.40.48]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: aca47903-5519-4340-76d1-08d862cd886d
x-ms-traffictypediagnostic: BYAPR11MB2631:
x-microsoft-antispam-prvs: <BYAPR11MB2631CF02E44B209FDB0960FCE2340@BYAPR11MB2631.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VVLxgsp1wnnY2MlwwjwP26accfQG8H0WNvpsGxGe8gubNkr33KDuRHLNjXtISUMB8fZjQc4gWvhL11/IjkN88sl1hM9fXTh3eolsJ8sidA5uNRrY7XFLtuAfYypcEZx0ltfhKMOPNt043IHC3pt/OsaRQL11xsui5sXhDTNRe6syZxQXgL37VIZhuFVdlEojxa9rOTZkRBuw5e+xZyQpQl2jjMFSXIodTUAwLT/fhJXNFe3Z1cpTOXCKakHx4zLZw1lxIojjBD7rYn7F+OpnmM9cbXvfUULNY6f4UhHtpXjLq6TAk/m4xyAyLt5IkZJFUQq9gGqk1ScTMuYAmFfkAiGHo1AASaGAADZnmX/5jtlFFgZPYMuqj0Cp2u21pRUL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4152.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(39850400004)(396003)(376002)(136003)(316002)(2616005)(8936002)(26005)(186003)(6506007)(8676002)(6486002)(558084003)(6512007)(478600001)(91956017)(2906002)(44832011)(76116006)(5660300002)(99936003)(71200400001)(86362001)(6916009)(64756008)(66446008)(36756003)(66476007)(66556008)(66946007)(66616009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 1MtyoZKgkbHXHmNyq15XiTFeqpGgdjHyduLtjesxTQOS2ch09ZYGrtQg5P4srWNDOkQmdXgW037EhpptfhEydtd2uVXx50QzP8+zyHoesDJgifGKVJzj/1N5IOKyDbJAOl5ud5SgBzPgGCbbKsFDg++C2+nzh8XacO5uGdKva+XSs/R+EXyB0hOtyoz/tDyEiutWUQr8KPaIA+CZLtjjBWIIuun95z0pC7Rd4hmc/8SM0/LyYPHQ9tqrsA4WLiRT3e5CC13fDLAi97I4yQ6vBPl7jWEwXIfM0YllKMe7Rihxhxr0k5oc+xPt8IYAeQpOEvsZiq5XvpmkCfNiPUjAbO9bsD9R2TzWZ9+emjoWiAHzokSvXU01UzsJGHKxny1KKFIrs65Vs/oD1ZTU9i5kW7JrCoyBFYr5aRFgdDQYDiNhWTJr9zNXfIOaoqP0ginNdJlxvWIL3jYffZfIa4Pfl+lmd2LoUzI9eIhXu8uKm9ek4D+WUW8XwVIWqxmuRkmAg/ZuOeTeOH9M+IdSZjfuwIwhZM8N9yIklZJwJpL5oWU3TpXF2uH4uOmvA+h76P6rn+fkLYfoFQtNjbwJjqEEmBaD+MK2s/dFD1MW8BXz5DqT1z40QmjUFFeZd0iQ48WZjd/gR+Ec/w+v/yioIUkOow==
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
 boundary="_002_fb7b00be5e73657deb6212a36a491d4f443165dacamelharmonicin_"
MIME-Version: 1.0
X-OriginatorOrg: harmonicinc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4152.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aca47903-5519-4340-76d1-08d862cd886d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2020 10:10:16.8168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 19294cf8-3352-4dde-be9e-7f47b9b6b73d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hmC9M6FzOxbtghvzVj+SC0XkeHwBYElu4FVu3PLHtkWbvfL5EgpCrE1Z16A42OiCiqYW8JmRklOHSBR1SAYzL115t2YpXY4/XdSRz5K0uhg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2631
X-FEAS-DKIM: Valid
Subject: [Intel-wired-lan] i40e: Function i40e_set_max_tx_rate can exit
 without cleaning pending state
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_002_fb7b00be5e73657deb6212a36a491d4f443165dacamelharmonicin_
Content-Type: text/plain; charset="iso-8859-15"
Content-ID: <5007A7F88DC6DC44A75C71D603F07C57@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

Hi All

The below patch fixing the erroneous state in driver (v2.12.6)
when function i40e_set_max_tx_rate exits without cleaning=20
pending state of the device.

--=20
Best regards,
Arkady Gilinsky

------------------------------------------


--_002_fb7b00be5e73657deb6212a36a491d4f443165dacamelharmonicin_
Content-Type: text/x-patch;
	name="fix-return-without-releasing-pending-state.patch"
Content-Description: fix-return-without-releasing-pending-state.patch
Content-Disposition: attachment;
	filename="fix-return-without-releasing-pending-state.patch"; size=318;
	creation-date="Sun, 27 Sep 2020 10:10:16 GMT";
	modification-date="Sun, 27 Sep 2020 10:10:16 GMT"
Content-ID: <0CEC87D2C829F54CB14CF485AE0B20B3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

LS0tIGEvc3JjL2k0MGVfdmlydGNobmxfcGYuYwkyMDIwLTA5LTI3IDEyOjU5OjE5LjMzOTUxOTYw
NyArMDMwMAorKysgYi9zcmMvaTQwZV92aXJ0Y2hubF9wZi5jCTIwMjAtMDktMjcgMTI6NTk6NTgu
NjUxMTIwMzgxICswMzAwCkBAIC03NTA0LDcgKzc1MDQsNyBAQAogCS8qIHZhbGlkYXRlIHRoZSBy
ZXF1ZXN0ICovCiAJcmV0ID0gaTQwZV92YWxpZGF0ZV92ZihwZiwgdmZfaWQpOwogCWlmIChyZXQp
Ci0JCXJldHVybiByZXQ7CisJCWdvdG8gZXJyb3I7CiAKIAl2ZiA9ICZwZi0+dmZbdmZfaWRdOwog
CXZzaSA9IHBmLT52c2lbdmYtPmxhbl92c2lfaWR4XTsK

--_002_fb7b00be5e73657deb6212a36a491d4f443165dacamelharmonicin_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--_002_fb7b00be5e73657deb6212a36a491d4f443165dacamelharmonicin_--
