Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA342CF6B7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 23:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2471E20784;
	Fri,  4 Dec 2020 22:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v764JkJC8q2X; Fri,  4 Dec 2020 22:28:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 664BB207A1;
	Fri,  4 Dec 2020 22:28:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D20A11BF841
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 22:28:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CC8D387D84
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 22:28:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MPdsYwcSyQ28 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 22:28:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 991A487D73
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 22:28:15 +0000 (UTC)
Received: from pps.filterd (m0170391.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4MM78F031024; Fri, 4 Dec 2020 17:28:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=9SQ4eCcXf/8EdWVtjKHn1UORD8kyuyJt6K2Vdryq/XM=;
 b=NWkqLmfnHg/+GfGCPEzUPmY+eeMBPu8XxrHHhDRFiwPVCtXR3rTIhtfSCp1SwhGeXXIb
 0FxZ7zoeeOEvGPwa7Uij0/t7E2KLPOFCM/Ulz1sCxNAeUMeZDg1GltkZNLIg/vzr/1h6
 SlbXOgTRsZ579vU/5nuNLe1blj/Y/csNTtevBZPvSQZ8ZmLfLQI99PenKKYpVg+DNxLA
 T8RF6fgtS/QlzLnfht4NHFgMw70VwdTM9HB0u9XUyOqvwizDX5K3briEaBnRHlxLv6pP
 pFy5N6NUk/nhdBmsBPtAYhpisLilQduINmHenBEi5AxpybA5r0notqaHAqGj+bQiAB+J gw== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 353jk34h0e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Dec 2020 17:28:09 -0500
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4MRgMl038003; Fri, 4 Dec 2020 17:28:08 -0500
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
 by mx0a-00154901.pphosted.com with ESMTP id 357t88kddv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 04 Dec 2020 17:28:08 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eYuWzKN8u7P+mkvzfnt6EnEcFAKUE9asbNS3yjj3ToNEo/MKcRygpXmI8kaCAqvIGkTCNLULk4t1xHjd9dyEfSydjAxhuvBR4zNRzjDEj+tw1UrCDP1KAHASjorez4o+QWOZEtm2cKr59Gy/QNO+xpGJS1TzoIhnhT6BFbCuVPD485lLEaFIJ7i0650NGx6X6XU32Spa11P+1MTxex0bTXSDeBo3ilJy38F7t9h5zoIfV0lAsOgwrUZnwSfzKXuXbLnq8SaVOzZROJEJj99VSq2Z2SFx5EALH5XoIspVcJUXT1uaJTjoPK2MmuEGgIL1bgC9TYV1kegTW9LaVe83Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9SQ4eCcXf/8EdWVtjKHn1UORD8kyuyJt6K2Vdryq/XM=;
 b=bx9ViK/iWd9pwMgnkMAOB/Or+uClO3o5pStyxlQMGBaUe5BvjMIq5iUSi7Lt5LDzIDmyDGbVOtEKF7UXDX2yS7jwd2U3E6QoPn7IAFkJ2J9755+6WsN8N3SwMR6L9jWAJujAkKeT45VWNih7girRJ70AuOhL902CYd0u4n0K63vPNQKu7RtuUoC21sS6dluZBJUFYnOR98LDnAIAlRIfua68nxP+219/Il82dqFKrz0BRy7p67YpwuUUfFg8D+EoTYc+D8vErZTsJl6tyXnExvhK4xh9TStnS/DA7thYAEmSVZ8fFHuRQT2VPHQToGsKU3wNBfJuNtwx//AYFS5nQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9SQ4eCcXf/8EdWVtjKHn1UORD8kyuyJt6K2Vdryq/XM=;
 b=hUS9pOoTHZqqr7tMGVUFkbaLD2PY0WTojUI+Fb+O0vZptisfwO8Qq8PeCczscyOUKQQ3Y9BI3GOeRW73+e8UGLbBxHSgaht5ra1Kyxg4Pwk2+F+CQ38B9X78QJTMk288G12j7059TwRZ8LnZbMlcBCn3C44ILgC3a4G9i/bBCQo=
Received: from DM6PR19MB2636.namprd19.prod.outlook.com (2603:10b6:5:15f::15)
 by DM6PR19MB4216.namprd19.prod.outlook.com (2603:10b6:5:2bd::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.20; Fri, 4 Dec
 2020 22:28:06 +0000
Received: from DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::8a8:3eb2:917f:3914]) by DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::8a8:3eb2:917f:3914%7]) with mapi id 15.20.3632.021; Fri, 4 Dec 2020
 22:28:06 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Thread-Topic: [PATCH v3 0/7] Improve s0ix flows for systems i219LM
Thread-Index: AQHWynlfqP1K6e0vqUqfE6etAZ98Tqnnc3yAgAAQmDA=
Date: Fri, 4 Dec 2020 22:28:06 +0000
Message-ID: <DM6PR19MB2636B200D618A5546E7BBB57FAF10@DM6PR19MB2636.namprd19.prod.outlook.com>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
 <CAKgT0Uc=OxcuHbZihY3zxsxzPprJ_8vGHr=reBJFMrf=V9A5kg@mail.gmail.com>
In-Reply-To: <CAKgT0Uc=OxcuHbZihY3zxsxzPprJ_8vGHr=reBJFMrf=V9A5kg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2020-12-04T22:26:33.9605036Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=966b8055-3d86-4004-8624-a644808bab78;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d61e4417-c178-4b38-1855-08d898a3df55
x-ms-traffictypediagnostic: DM6PR19MB4216:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR19MB4216A4B37EC5FCABE6F62074FAF10@DM6PR19MB4216.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iYwDJepitNaB6V9RPCBX/QV46M3SHCnHPCU1OF4gjv44If1MgqPNtm0qieoWIKPejVMRACePexE8gXA9IQOFqOsIwwkbB8FmJztg4beHsnoBWvU0C451o+LAC0aFAZwhmOLUTqQqClki4adgl7XFupF3nEmYWSZJX0DzGkW2kU1MKg+VNgWWQLJfgsksMpBzWQ8FdUW3EdfKHA+2M1bxwOaOZCDyx7ywtWYNVH2USszydFTqnPXncsdtDi0gNpvrXnDhQL1KCi4ZeukLqCopAHFlVpe8QgE0fuqBKdYwRhTjxjBSr94eEbbmN53WnzJlZSw9cnSoVHK3Mydh78ZVptxhJuDhIgVsPb5TqlTMYaR4ml6XIPurWKxo5nUB+A3ExY8XuDUqm0K/hXRQhJwlDW/Me/VBJ2D43HooYn+/0gcP9+tiumwse1VCQJTPkgcNu98ZBXJSrR0+2qypNtNg/FLyDPwhP7XwJ/vsy8RWp/g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB2636.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(136003)(376002)(39860400002)(346002)(26005)(52536014)(478600001)(8936002)(66946007)(5660300002)(83380400001)(9686003)(7416002)(8676002)(4326008)(71200400001)(2906002)(66556008)(33656002)(76116006)(53546011)(64756008)(66476007)(186003)(54906003)(966005)(86362001)(6506007)(66446008)(55016002)(6916009)(786003)(316002)(7696005)(32563001)(6606295002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?K2dpWG1acFgzdkljb2I1QVRRdEtTWW5HYW1LK2JuWmxkSng5K2hNQU5hTU1o?=
 =?utf-8?B?UG9sWlJDcE15Uy9menVMZm1CSU1nL2Z5SEhlTkhBVVdhaU1SdnlnUUNmZUVu?=
 =?utf-8?B?WW9TWG11Y1pGVllWM2QvTC9pdTRkL2M5amxleVBSb0RHeTIxc1pneW1VODNR?=
 =?utf-8?B?T2FOR2lSY2dyckFrMWY4R0tPU2EvVDBWcm5xaFVGQnc2NnQxWjFORmdBb3gv?=
 =?utf-8?B?bUNUUldaeHZRQllRMkIvNEEzc2NFbjZlZ0pFb2ZLZWFoTEpqMnVTcGNnOUxH?=
 =?utf-8?B?cnZRZFhJTmhPMlRyWHZ3RnVTejhZNDVjUlNSVDJwNHBDWWF2VzVFejVGMGFa?=
 =?utf-8?B?Nll0OUJqaERqcmcyOVlodXQwbWZIY28xejhtSnRuSGdob1BLc1hJNVpBcFFa?=
 =?utf-8?B?UkY0OXl2SGlORE9BYVFGbWZXTlA0NGlCeDEwZU5yQUVRM1kvMkcvZFBQRmln?=
 =?utf-8?B?UlFJV0hSekxmbVF0VE9HM1B1dStUUURybGFkRTdWTUpEWC8waTRmTWVpVmpk?=
 =?utf-8?B?Ync2Rk9oUTBFdFNvK3ZQb3dieDFMeldTZkdKa0JGbzNRNTl0U1pFQlVZUHBG?=
 =?utf-8?B?eDNaTlNabGx2a0REc1FMRGZZdHRZcTJrWWs0eEhCSkpnNmMyVFJORzB6R3NK?=
 =?utf-8?B?dDRBWklaKzV3Q3R0bmNCcktHRmNRQnptQUt2N1lVbDAzZlgzajNSNlFHVTFB?=
 =?utf-8?B?dnM1RHFjMG5uVm5XWFNvLzV4Y28vN1ZseCs4Q0ZpZ0NHN212cnZ1cVVpMXlP?=
 =?utf-8?B?MTBNbzN0RDVkMXgvU2drcGlIMDRCSWtFYUxHci95M01NbzU3Wko0ek0yYXZz?=
 =?utf-8?B?L3lZaFBhM0ZYc3Zsc25YMmRpS1BjdjAxM1pqVThHdkJnMnFxR3VzTnUzVmds?=
 =?utf-8?B?eVJzSHBJMVd6N2pDT2M2OEkrbmlrNWRyQTNIbTNvajZGdGQ0R3p3N244SzFt?=
 =?utf-8?B?cmQ3YVAxUHByR2p4K2ttSzlHaUZIVVBvYU9Qcy96dUdBR3lTSlh1OWZkbG5i?=
 =?utf-8?B?NWhzWDV4MUJPWG1jVGF6ZitTem4rbUdqbWlldE5tY1JvQ3BCaURkRmFUYjA5?=
 =?utf-8?B?M3I2bitvdlFUWUtscEFxdERnbWhJbk1lSVFiTjlkOU84RXRRK1BodEZpay9q?=
 =?utf-8?B?Q1BYcnBsd0Q5QUhzQ1hsc1dUb0prQS9MamlkYnZtbUlGbUE2VWpBb21tREFF?=
 =?utf-8?B?MkpDcWNWdWNYOWxuVVovNHFHTmZ6bStROGpFL1NnUHZQOE42ejA4T0RZbVJt?=
 =?utf-8?B?TU9iMjBtaFhpRVJnMVgwZzF5RXF6SjBUMGJNNzY0dmN2MzduRGw4WTc4RHRI?=
 =?utf-8?Q?5FtsFiSYNB8F4=3D?=
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB2636.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d61e4417-c178-4b38-1855-08d898a3df55
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2020 22:28:06.5433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PsqGL3v7hM9JBlzw59pLf+Gs2KHntOomrjlkLbJfhPcRPzZsdG4+LjCGyF/tAR4owSMdBQWaJ++TgJTnIxDY599qvMtJ6OR9Ni/dnyMS3Os=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR19MB4216
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312, 18.0.737
 definitions=2020-12-04_12:2020-12-04,
 2020-12-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 bulkscore=0
 adultscore=0 malwarescore=0 clxscore=1011 priorityscore=1501 spamscore=0
 mlxscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012040127
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 bulkscore=0
 spamscore=0 mlxscore=0 mlxlogscore=999 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012040126
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
 Perry" <Perry.Yuan@dell.com>, "Shen, 
 Yijun" <Yijun.Shen@dell.com>, LKML <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Alexander Duyck <alexander.duyck@gmail.com>
> Sent: Friday, December 4, 2020 15:27
> To: Limonciello, Mario
> Cc: Jeff Kirsher; Tony Nguyen; intel-wired-lan; LKML; Linux PM; Netdev; Jakub
> Kicinski; Sasha Netfin; Aaron Brown; Stefan Assmann; David Miller; David
> Arcari; Shen, Yijun; Yuan, Perry; anthony.wong@canonical.com
> Subject: Re: [PATCH v3 0/7] Improve s0ix flows for systems i219LM
> 
> 
> [EXTERNAL EMAIL]
> 
> On Fri, Dec 4, 2020 at 12:09 PM Mario Limonciello
> <mario.limonciello@dell.com> wrote:
> >
> > commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME
> systems")
> > disabled s0ix flows for systems that have various incarnations of the
> > i219-LM ethernet controller.  This was done because of some regressions
> > caused by an earlier
> > commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
> > with i219-LM controller.
> >
> > Performing suspend to idle with these ethernet controllers requires a
> properly
> > configured system.  To make enabling such systems easier, this patch
> > series allows determining if enabled and turning on using ethtool.
> >
> > The flows have also been confirmed to be configured correctly on Dell's
> Latitude
> > and Precision CML systems containing the i219-LM controller, when the kernel
> also
> > contains the fix for s0i3.2 entry previously submitted here and now part of
> this
> > series.
> > https://marc.info/?l=linux-netdev&m=160677194809564&w=2
> >
> > Patches 4 through 7 will turn the behavior on by default for some of Dell's
> > CML and TGL systems.
> 
> The patches look good to me. Just need to address the minor issue that
> seems to have been present prior to the introduction of this patch
> set.
> 
> Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>

Thanks for your review.  Just some operational questions - since this previously
existed do you want me to re-spin the series to a v4 for this, or should it be
a follow up after the series?

If I respin it, would you prefer that change to occur at the start or end
of the series?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
