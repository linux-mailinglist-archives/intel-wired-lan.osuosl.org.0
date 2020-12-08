Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 166992D3639
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 23:30:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D15486B8A;
	Tue,  8 Dec 2020 22:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pzlLF_peFVC6; Tue,  8 Dec 2020 22:30:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED1C386B70;
	Tue,  8 Dec 2020 22:30:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB2C61BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 22:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B3F48875BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 22:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7a-B9dZ0Y0jY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 22:30:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E2C58759B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 22:30:13 +0000 (UTC)
Received: from pps.filterd (m0170391.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0B8MRliG006967; Tue, 8 Dec 2020 17:30:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=kp/Bpq+3NbwA3l43WwGt/1idEobWLR64ZWCKRc/eR1o=;
 b=cXfRqLor74ur4bvz5B04YgPYh2JdJeK5pPtaZWwjL+fzQZ75JXEkJDl9qSJhKJ12UCYq
 Tf/HHNQ/UGjNK0P7fjvHSyDonbc3Lo8O5btpyQaGImu3EOEs/Uc9DXIToD8hZny2fson
 N2/ruhkV+wBZbszyPwA1OzVvh0jDmxIDXtQrIi8+YC0LvI558WE2Ql2caXGrs7PijT9Q
 cYVeeYtrS9cK3BHYOq573ASkjU6FlfhXG0r+oyIyt5uAFwT5NljdyvBZwaA+nY5Mheqt
 v/AHwwE2SxESNdycU2DS/5cZDDrhaScQd29kSeFHH8yHwoTjDpsc/NyHXWDtUHI2r6Th rg== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 3587gycdn9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 08 Dec 2020 17:30:07 -0500
Received: from pps.filterd (m0142699.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0B8MRJqS185888; Tue, 8 Dec 2020 17:30:07 -0500
Received: from nam02-bl2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2050.outbound.protection.outlook.com [104.47.38.50])
 by mx0a-00154901.pphosted.com with ESMTP id 35agkj1fke-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Dec 2020 17:30:06 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PCsPgVPU68x1SVJZtSnntEwbT44cgNs5NN8913xl0JoM+oZUJw1v2SLTf3wDv4xYO2E+Tn2XSBRYy3BVL5+qOwwWZeiCsOumElhFJSyzIoUsN7V0k8QoA6wXjrgF0ImEpKR3vF2KdGmWPQu+DfEO1Pvftd+V2vedLWa5KRO9kM0IH3ZhOfYTuQ8BJyoWNFPQTMVSs2WEaNYaLmJEYMCJpfasP87mnBpsStsEtZTwX6lWyGX/0/hPApj7sBWKykOOLm2ASX69IkbTLCW9LmyemV46VoZG3zgGAJY93Ybv5UzHmdEof3aim257tsugQ+cniJ2br1eB0fiQtjqj2OsHjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kp/Bpq+3NbwA3l43WwGt/1idEobWLR64ZWCKRc/eR1o=;
 b=X7XbP4AvM/vVcyuxsMRPcJsxfZQs0arPN9SF3522vH+Q863eyndC8KjscsUsct0h+EMEmaf2iMBtz4a6QoppLd8JS24gSSbrkHzfuXwvaZbehCInd1h0BvulDJ6qd19M3sZDukjPLVG96YluSfWgMetOvVF5YszC4bwJeZNTYeMmOCZcllLJeci22gKxtb/IbCdOyzCRjIzswB6Mu+vF+7njBC2PWZxDoWqH2ljDinZ74FcHxGim5ESgBQEDSp0EKJvpXeuFbiL91nHeXGQciFmbP3Ouq6ysIwLcFPL8InQoDfPbNIuMgj9eYgJFtrUloeDh9r5+3qb5HeJmQ/5jsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kp/Bpq+3NbwA3l43WwGt/1idEobWLR64ZWCKRc/eR1o=;
 b=jynGft1C6iw0eTmfwmP+OfienuJzb/gk5Fj28dJgLiYTHkhOmL+RNxOmqDftJ+TugabLlIgaU8NfYdiyzdbBHwGuea1Oodw8Ct7Ek0k6v4yGB+ABFZRmyvvpinDHIEQp5L4LPtLOZO+VVhphK46ccjM9BRW2QMQv0uu7nRkpp9U=
Received: from DM6PR19MB2636.namprd19.prod.outlook.com (2603:10b6:5:15f::15)
 by DM6PR19MB2396.namprd19.prod.outlook.com (2603:10b6:5:c2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.31; Tue, 8 Dec
 2020 22:29:10 +0000
Received: from DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::8a8:3eb2:917f:3914]) by DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::8a8:3eb2:917f:3914%7]) with mapi id 15.20.3632.023; Tue, 8 Dec 2020
 22:29:10 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: Alexander Duyck <alexander.duyck@gmail.com>, Hans de Goede
 <hdegoede@redhat.com>
Thread-Topic: [PATCH v3 0/7] Improve s0ix flows for systems i219LM
Thread-Index: AQHWynlfqP1K6e0vqUqfE6etAZ98TqnrpJ0AgAAfsNCAAObyAIAASWEAgABw+ACAACbLEA==
Date: Tue, 8 Dec 2020 22:29:10 +0000
Message-ID: <DM6PR19MB2636BAAB459B3895EC5F0A98FACD0@DM6PR19MB2636.namprd19.prod.outlook.com>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
 <d0f7e565-05e1-437e-4342-55eb73daa907@redhat.com>
 <DM6PR19MB2636A4097B68DBB253C416D8FACE0@DM6PR19MB2636.namprd19.prod.outlook.com>
 <383daf0d-8a9b-c614-aded-6e816f530dcd@intel.com>
 <e7d57370-e35e-a9e6-2dd9-aa7855c15650@redhat.com>
 <CAKgT0UebNROCeAyyg0Jf-pTfLDd-oNyu2Lo-gkZKWk=nOAYL8g@mail.gmail.com>
In-Reply-To: <CAKgT0UebNROCeAyyg0Jf-pTfLDd-oNyu2Lo-gkZKWk=nOAYL8g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2020-12-08T22:29:07.3087018Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=1c42d836-1b27-44ce-a14c-6544365ab8bc;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d14ae7a-fff8-4b9a-2637-08d89bc8af3a
x-ms-traffictypediagnostic: DM6PR19MB2396:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR19MB23968CB2EB3AC41ECC1ECB26FACD0@DM6PR19MB2396.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: arWZPqm2ZAKCfcnDlAEJMGgjefIL2kA6IZDotsN7Pmise5ynKAEX4lye0PbpZPjRr1ZaoDen5+1kMDR3AKo9tYeZqtnx+R96+E4odR3ez3GDpyr3HyGwG75DD5UqH2I3lQRTN65drh8YP8lmgKemyUS+NFM7w20qNMhzy5tJmhjXfmK1Ez5Jrs8HxsGVHHRN2PLaa72Nwclc1287OKDY8hpezTAxuuuICwOnpl7tiXuh/pDHxLSEp0/3PQjDZpFh+3cV/hjumvLFqDF+IA2Ps4Oss32aEtFdztapkqRQUExvrwfIr6omJInFia2VXY8YynRhVcl2gOaJ/lMVur7DaNY0n2JOzmX0wrWit3sUWRFIY9k2vxEbGMw71A4PHqIJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB2636.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(136003)(346002)(4326008)(8676002)(2906002)(6506007)(7416002)(83380400001)(186003)(786003)(110136005)(54906003)(7696005)(26005)(8936002)(508600001)(66476007)(33656002)(5660300002)(55016002)(76116006)(64756008)(66446008)(71200400001)(66946007)(66556008)(9686003)(52536014)(86362001)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?amoxNTdnWU1hcWplQzV3NzFkWkpaQzVBZDhvWm1TRTN1ODgyR0dEc1YzNnQw?=
 =?utf-8?B?MGVNWTdYL2RaUis5K3IwajlQWWxpZkhzSHpNOHcyN0RvS1RoL3k3R3VvSE4y?=
 =?utf-8?B?Zzd5cGJYYlVSRG03OGd5QmtIRHBpSC9DMjZWcWhueStvZWFkSFpZNFV4NkpN?=
 =?utf-8?B?Nm0zRDU0Z2ZOVWxvbzIxb1ZlSDA5ckYrNWRxNkxMeHBTdlpZWXpJUGkyMTVN?=
 =?utf-8?B?SlQ1WUtRWmFveGRiSS9jTmRBd3ljbGlxTFlpemh4OFlEWEtlUXhpVThNbWRt?=
 =?utf-8?B?djhHUzJjYlVuVTNDcXJrOTUxUHREYndKTmllTWNFNjBpRjdDY2QyM3RiWG5H?=
 =?utf-8?B?a2FnUHhMNGlnd1NOYzBRMEJrRllxMlRUYUtpdURWSDcrenBTMHlGLytueHhM?=
 =?utf-8?B?dVZwOFplRnVwR1k3d2kwa0NZUXdZaE1Oc0lNN0N4d094QS9jMWdYenRIR0lY?=
 =?utf-8?B?a0lhY01UM2ZRb0krTFhXTXRGSUxZajMvQVE4Vmx4eE5vUXBZcTZXSUNkQnRa?=
 =?utf-8?B?c21TR1NOQUQvZy8yZFhuejVQN3RvWXBuTVRaWm1wZTM0WXk2M2dHdThpVnJZ?=
 =?utf-8?B?WmVtaEMxZHNoZFpHK3BNRjV5VDhCcTEwMGFXMFJ1RllhQi9TRXpzemxubzMx?=
 =?utf-8?B?VWtFUzdVMCs0aUpwZUlTdzFvcGNncnVwZEV5UnVWeHZjczNsdjJBY3VVcW9W?=
 =?utf-8?B?bDArdnBxdEdaNnFTd3FUWWl5Tm1iS1ZSbjd6NmptS1A2b0lqQWhDNFlreWZR?=
 =?utf-8?B?YTZhRGZLZzI5eFhyQkZRQlkwd2lwbm9OSW5ZcmtIQldNV2VzbVgzOUsvemR3?=
 =?utf-8?B?V3VsQTRTL0xhVW1Eb1JacVVaa29YUG5sUWpCaW9OaEgyNW5WMmF3SWZyWENK?=
 =?utf-8?B?YnJBYXBmUTZLRy92ellMSm1lOTdsc3ZOMGZKbFpSSzVEck9mQmZ1REVJaGts?=
 =?utf-8?B?bTFmbVljY3RMRmJZc3pUWUlLOUdyVVlKdDNld2pXNWJYUFJkdGxldGdacVh6?=
 =?utf-8?B?V2ZwT2d5UVA1UGlrUjB5WS9ZU1haWWpkWTlxRitMUkx5Rngzb0xWL3ZHQ0tr?=
 =?utf-8?B?QXIwT2JsVDdQV3VpZVdTQzk5K2RXTnpSUG12dCsvOWt0aDcrTkl3RE5QZytS?=
 =?utf-8?B?Yy9lK2MwdmptbVZrakdVZnorLzRRWU5oVFpFaUd5d1Q2cFgvck9tSlR2SWcz?=
 =?utf-8?B?ajVsUTN4ZGtqZGZid1FLZW5vdzdJUGdZTDcvR0thQzZ5dzBiK3JhejBrVnI1?=
 =?utf-8?B?UFBzaytiNHlWVFJKc3VlY01JVlgxZ2JTTlg1WlZMaTNzMnFDZm95cFVlRFQ5?=
 =?utf-8?Q?nrBS2EFuKXl7w=3D?=
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB2636.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d14ae7a-fff8-4b9a-2637-08d89bc8af3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2020 22:29:10.7793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vvmN3P64zR2YERoLuZULTlluRpGbiPfoM9cVNsI4GMfZlBG6gYWiQj2AgsV5pFlcFNdfTaia0KaB0XwAiTxQynOhN49/18OvUle1Pl/b/JY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR19MB2396
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-08_17:2020-12-08,
 2020-12-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 spamscore=0
 clxscore=1011 suspectscore=0 impostorscore=0 mlxscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012080140
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012080140
Subject: Re: [Intel-wired-lan] [PATCH v3 0/7] Improve s0ix flows for systems
 i219LM
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, "Yuan,
 Perry" <Perry.Yuan@dell.com>,
 "viltaly.lifshits@intel.com" <viltaly.lifshits@intel.com>, "Shen,
 Yijun" <Yijun.Shen@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> 
> Based on the earlier thread you had referenced and his comment here it
> sounds like while adding time will work for most cases, it doesn't
> solve it for all cases. The problem is as a vendor you are usually
> stuck looking for a solution that will work for all cases which can
> lead to things like having to drop features because they can be
> problematic for a few cases.
> 
> > Are you saying that you insist on keeping the e1000e_check_me check and
> > thus needlessly penalizing 100s of laptops models with higher
> > power-consumption unless these 100s of laptops are added manually
> > to an allow list for this?
> >
> > I'm sorry but that is simply unacceptable, the maintenance burden
> > of that is just way too high.
> 
> Think about this the other way though. If it is enabled and there are
> cases where adding a delay doesn't resolve it then it still doesn't
> really solve the issue does it?
> 
> > Testing on the models where the timeout issue was first hit has
> > shown that increasing the timeout does actually fix it on those
> > models. Sure in theory the ME on some buggy model could hold the
> > semaphore even longer, but then the right thing would be to
> > have a deny-list for s0ix where we can add those buggy models
> > (none of which we have encountered sofar). Just like we have
> > denylist for buggy hw in other places in the kernel.
> 
> This would actually have a higher maintenance burden then just
> disabling the feature. Having to individually test for and deny-list
> every one-off system with this bad configuration would be a pretty
> significant burden. That also implies somebody would have access to
> such systems and that is not normally the case. Even Intel doesn't
> have all possible systems that would include this NIC.
> 
> > Maintaining an ever growing allow list for the *theoretical*
> > case of encountering a model where things do not work with
> > the increased timeout is not a workable and this not an
> > acceptable solution.
> 
> I'm not a fan of the allow-list either, but it is preferable to a
> deny-list where you have to first trigger the bug before you realize
> it is there. Ideally there should be another solution in which the ME
> could somehow set a flag somewhere in the hardware to indicate that it
> is alive and the driver could read that order to determine if the ME
> is actually alive and can skip this workaround. Then this could all be
> avoided and it can be safely assumed the system is working correctly.
> 
> > The initial addition of the e1000e_check_me check instead
> > of just going with the confirmed fix of bumping the timeout
> > was already highly controversial and should IMHO never have
> > been done.
> 
> How big was the sample size for the "confirmed" fix? How many
> different vendors were there within the mix? The problem is while it
> may have worked for the case you encountered you cannot say with
> certainty that it worked in all cases unless you had samples of all
> the different hardware out there.

+1
IIRC it was just Lenovo that was checked and just a few systems.

> 
> > Combining this with an ever-growing allow-list on which every
> > new laptop model needs to be added separately + a new
> > "s0ix-enabled" ethertool flag, which existence is basically
> > an admission that the allow-list approach is flawed goes
> > from controversial to just plain not acceptable.
> 
> I don't view this as problematic, however this is some overhead to it.
> One thing I don't know is if anyone has looked at is if the issue only
> applies to a few specific system vendors. Currently the allow-list is
> based on the subdevice ID. One thing we could look at doing is
> enabling it based on the subvendor ID in which case we could
> allow-list in large swaths of hardware with certain trusted vendors.

Although it would decrease the overhead my preference is that we don't lump
all of an OEM's hardware together until it's actually been checked.  It's going
to be very 
Even in a single OEM there are a variety of
BIOS vendors in the mix, different ODMs working assisting on designs, and lots
of moving pieces of firmware during development.  You'll notice I intentionally
have only included a subset of Dell's TGL designs in the later patches and
separated them out for easy reverts in the series because they're far enough
in development to be considered a stable baseline and have been validated.

I'm a fan of collapsing the lists and heuristics after a generation of systems
is done if they can all be checked, but beyond that it becomes very difficult
to pull out one single system that has a failure.

> The only issue is that it pulls in any future parts as well so it puts
> the onus on that manufacturer to avoid misconfiguring things in the
> future.

As Sasha said it's not a POR configuration right now.  So until it's become
POR configuration it should be case by case basis enabled where it works.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
