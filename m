Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6E52DA09F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 20:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DDA086F6D;
	Mon, 14 Dec 2020 19:36:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YThyGBI+EpNU; Mon, 14 Dec 2020 19:36:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 674CA86F7C;
	Mon, 14 Dec 2020 19:36:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6491B1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 19:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 253D520379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 19:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ouvTSNsoIK5j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 19:36:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by silver.osuosl.org (Postfix) with ESMTPS id D090620003
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 19:36:30 +0000 (UTC)
Received: from pps.filterd (m0170393.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BEJWCV4026017; Mon, 14 Dec 2020 14:36:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=VVHLWo1gcbZyJvAR6C+jBodfRtePQtPzjkOuxfOYkBk=;
 b=oP66Pjtr+F7zFdcpzIuStRKWPxtciCuMDfwMEW5MiFoLTYvlIwHJ/F3mTXuc/YjaJdis
 bylSiNXV4JtOXXV7ClTXbcOVZypIrbH+v3EdQxzZQAYEBpJQ+/Vs+Da90UvOxmVdRWFs
 EfPvI/dHXSOnU38T4/26WVx/CswGvB3l80Yw2Y6m4r1C75ynA7q17h6e5OS7NDfOLEHV
 KjNZEaI1pj2Kz7QnqYMBQ7TP3pmBv3Usy7BferpbrAlGHDPwi8DVaszwfOAQ5m8SADyA
 Ey2gJkH1bkZDRtH6RrIWajBKKi6Hjf4BK71VDNp/15LBP67VchbcXrDblMwv5BOt6Qe+ TQ== 
Received: from mx0a-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 35ct2ppka6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 14 Dec 2020 14:36:23 -0500
Received: from pps.filterd (m0089484.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BEJUEk9070867; Mon, 14 Dec 2020 14:36:22 -0500
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2107.outbound.protection.outlook.com [104.47.58.107])
 by mx0b-00154901.pphosted.com with ESMTP id 35ed2ahr2q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 14 Dec 2020 14:36:22 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FzbOiOT0dXdJAbfeiNmC5FVZaJsxkMaKPSY1yoxRSvlNwmkUqvPR0IXYQMmu+CGNdcYTSoPkpmbHUhFrXH8ZN/OwX8NKaU9d/EcY2ZGYNwDXDsxAxtqVcm0cex3qVnWMHHjKQCuZ4laA/iuFJWWibyzA0wAxhaXIi/08QOCLMARoFCwHTxLu76ps+aZBNWRIciaKWGdsVRII7w91rxz6EzYM1dz/wj5bqPZZMfN4p2EDgp66KHsw4XgArDwzoebsPOK4rvOHSK/N6AaktVoFpPSyD1BuBS3wSkfBTjxSwnSDqgR/1/TVD5z/6aUCfkY2x/uCq8/FwfUHa2cj9ZFXcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VVHLWo1gcbZyJvAR6C+jBodfRtePQtPzjkOuxfOYkBk=;
 b=E5m30idy1GH1EWxpcVqDMkewBbAoYX29P4+ohtxtG+CsncSuwhEIhNITe7DBkBeadq7wU1axPSr5zily4I3v4hJvSxLwF4KaE9a2dFZp7ngVBRlfohGh0DXb6Bn0GlsJM+8y/s83qANkrjvmTJ/yzo7OgxQ4kSq+9D7Z7/MK3BFMa8ncI9zggJZNZkRbYuyZvJ1SU81lOU30RM2scKV05qzlvDkK7CVOYRltC2S/3ixGwNas/m3QNwRIcF8x5E5O+sHxWUq5+UeEgPQ9zTIJU0vkLu61sjIis6e6lij5XAHdxswpXJWMr1ze5goJGr8SM5mRaEsBV2CvIrPG3sDOtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VVHLWo1gcbZyJvAR6C+jBodfRtePQtPzjkOuxfOYkBk=;
 b=UNGEfGC8HgPAo93VF+dac4/chppM9lBdkh6qkRji5Wlp8g2hlE1Kj4KUEFKn5XZCzgEjz5yw1ON+gxBam95323vCtTaujXTg6Zo8aTzLWZyUN9f7tAaBTjVFlmKV6W5fLRPe+Kq53EAeFVw1htJ2HzOuL6ruqRFKu/oQIFTsHC0=
Received: from MN2PR19MB2637.namprd19.prod.outlook.com (2603:10b6:208:104::20)
 by MN2PR19MB3229.namprd19.prod.outlook.com (2603:10b6:208:155::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.21; Mon, 14 Dec
 2020 19:36:19 +0000
Received: from MN2PR19MB2637.namprd19.prod.outlook.com
 ([fe80::9014:6833:9711:8f6]) by MN2PR19MB2637.namprd19.prod.outlook.com
 ([fe80::9014:6833:9711:8f6%6]) with mapi id 15.20.3654.024; Mon, 14 Dec 2020
 19:36:19 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: Hans de Goede <hdegoede@redhat.com>, Jeff Kirsher
 <jeffrey.t.kirsher@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>, Aaron Ma <aaron.ma@canonical.com>,
 Mark Pearson <mpearson@lenovo.com>
Thread-Topic: [PATCH v4 0/4] Improve s0ix flows for systems i219LM
Thread-Index: AQHW0i6xs9Hb0tASW0mYD0yDIIAYe6n26HEAgAASdaA=
Date: Mon, 14 Dec 2020 19:36:18 +0000
Message-ID: <MN2PR19MB26376EA92CE14DC3ADD328BEFAC70@MN2PR19MB2637.namprd19.prod.outlook.com>
References: <20201214153450.874339-1-mario.limonciello@dell.com>
 <80862f70-18a4-4f96-1b96-e2fad7cc2b35@redhat.com>
In-Reply-To: <80862f70-18a4-4f96-1b96-e2fad7cc2b35@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2020-12-14T19:36:17.4920032Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=c4e0b09a-0dc6-461a-9d57-56ddd5c99550;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0eee7bd-d7d6-4164-9da0-08d8a06787c4
x-ms-traffictypediagnostic: MN2PR19MB3229:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR19MB3229926849A7BFA055FEE892FAC70@MN2PR19MB3229.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2t2fcpCpIumMItP7sKXMNXoCO4PuRo3H0tHD4hUsx7Gl+8M9OcmcXLg1I3A8MK1Z7pRH4cEhFbsWQClDNPihblZNtWppm0HtaMmHSSbc9j+zeBaKfwYa/5KjidaabAtqnt4EUhsv+1KA7USmHeoige98XWzI0h4BBVvw0ghZgkhLyV5guQaEcaI9nmNIwcoEDpHHrTtch5A/kNbeNt6+/zwFjCKAPF0Lv/625Nbv3rZMTxtBD/jIgqvZeywESom4T+pSGnS/ICZLJaKui4GSGk+KcKYJEAe9SCUI2aCTvlUbEnVWJSkn3jjhSNobfZCoUdESAm90FJGMmeAlrCfMbbmlOH8Cp2MyYl0GLOl8oS7G4aOes2I2W9ZduW34+7gt2pfqBUq1pjdOyGYzjJBNwwr6/STU3YCvQGCvfolcPmj+xrTrG1uewPRLjzllmTqfYw7DHGO/8SxRksLNg2hDuQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR19MB2637.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(366004)(376002)(8676002)(53546011)(6506007)(55016002)(8936002)(966005)(7416002)(7696005)(508600001)(9686003)(83380400001)(66946007)(33656002)(76116006)(110136005)(786003)(4326008)(186003)(66446008)(2906002)(66476007)(71200400001)(66556008)(5660300002)(64756008)(86362001)(52536014)(26005)(54906003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?Y2dMQ0xrZ0tUdE9zdkNvUytvdERxL3p4YTB4SWZubXp4NzNCWWhFaEVnOW02?=
 =?utf-8?B?OGpyNkw3bGNpekdvSmhMSDZZalhua3d0YWdUemFaSndRb0FwUWVYazZSeDNJ?=
 =?utf-8?B?eDZlTU9ZU3FCUlEzRUl4VHdoMTlJVVEvZ3FKb25aVzJoaktka2Rad2pSR25w?=
 =?utf-8?B?blNEU25Jb3kxM2N6RjdNcDVrMDFuOTdERDFEQzlpVVp6emxOakFjM1NmVGtr?=
 =?utf-8?B?T3p4YVpubWY5a0V0VVc5ZEpGVVUya2NrZEphR0Z5R0xKTE1Wa0NTNTlhU0dw?=
 =?utf-8?B?Y2tvcjd0ay95cC9HbWI4MVIvdEdWWHd3TzJldFhBRk1PcHlWMUw4eDhzN3Rs?=
 =?utf-8?B?U1VuT2hxUUpJeEVHRUQzRGxENlBWWXprMERudnJoOGtZb0Q2aTlZT3ZJVmNS?=
 =?utf-8?B?NC9QSGN2SEhzUHozK00vSlFSNFFuQUxKSm5LR3YzWGE1ZjBGWDI3R0pJSksy?=
 =?utf-8?B?MDJWY2VYYVpmNyszM1V0eU9nNUFSRkxVT2JjOWh6akhaeTkwNHI1WGFUWGFY?=
 =?utf-8?B?QThPb3hGQTBPQk1pOUkzV0cyV29CZ3NtRzVpMU92ZXdGUlZUczM5d0JhY3B6?=
 =?utf-8?B?ODlHNjQyU2wwVDNyRmZ1VzNnSnY0TlNCNnZhYytza2Y3WEp2eDYybDU3QUxr?=
 =?utf-8?B?VHNLWlRmNFFTNFRRMHdmbDM5dHBnZ01YZzZRVlc0eXdwZFJhdjFYdUEwS0Jn?=
 =?utf-8?B?ZGhxY3QwS2FjL0FMb0lGdlp0aHo5TlRjYWp4QWVGcXdJQzJDVUFtamt3VW5o?=
 =?utf-8?B?b2tzQ2t3Z2U2bTdXbWlFbUZ4cEJQSmd6Z210VU1aQlJxVlQyRU5rTkptOVVI?=
 =?utf-8?B?cnFwNmxrOVRvSFcrSWRwdy9TN25xK3pPMGE0czU3MW1ERXJ4N2t2ZXJDWW5x?=
 =?utf-8?B?bkllT0JMVitBcXlMeWd6eFNBWE4xRXBmN1Z5Q1l0aUhuR2RuSTFRZlVjZldW?=
 =?utf-8?B?ZlFmOFU3cFVMc0wvR280Mkl4VlRLZCtsOUZPNWxiNndHM093dFJPMUVlb0dS?=
 =?utf-8?B?L3lxTTNXbjczMFJzSkU4dlRnUHNZeVBHdlYvVkkzQTZZVmdvQVRaREtnUlhM?=
 =?utf-8?B?dHhiOXYzVXpYQ3AzUisyWlRybXFNR1ZnL080TnU4a3U3Y2hYbjQ3eEJqT0Fj?=
 =?utf-8?B?QnNYS2E2WTlpZUdBSGNLYys2MzE2dW1haERma253YXpMYkk3bjhkb1VkTGxH?=
 =?utf-8?B?SFVLSUFBV1VQaGFvbFhKK2p2WVF0UFY3VkY0aXQveVA3L2pGQ2EyYjYvNFJW?=
 =?utf-8?B?bkhvbTRiUnpFVUNYS0E2OGNMd1M4b0ROakJlQjZxanA0Ry9ydE44Z0hrWGVO?=
 =?utf-8?Q?FZcI/6FOn6+uQ=3D?=
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR19MB2637.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0eee7bd-d7d6-4164-9da0-08d8a06787c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2020 19:36:18.8602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VBrI4T+6CmGI+mblQpXo/lNgcLp3x5uLvvF1HLgSV7DodmxyfAlR/8tSKGfHQ/+m0n5eZxpqjvTcT3OHGSPOuMDJcmNMnnGwUDWUs95y+yU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR19MB3229
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-14_10:2020-12-11,
 2020-12-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 bulkscore=0 clxscore=1011 malwarescore=0 spamscore=0 suspectscore=0
 mlxlogscore=999 impostorscore=0 priorityscore=1501 phishscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140129
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0 mlxscore=0
 suspectscore=0 spamscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012140129
Subject: Re: [Intel-wired-lan] [PATCH v4 0/4] Improve s0ix flows for systems
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
Cc: Netdev <netdev@vger.kernel.org>, "Yuan, Perry" <Perry.Yuan@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>, "Shen,
 Yijun" <Yijun.Shen@dell.com>, Jakub Kicinski <kuba@kernel.org>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Hi All,
> 
> Sasha (and the other intel-wired-lan folks), thank you for investigating this
> further and for coming up with a better solution.
> 
> Mario, thank you for implementing the new scheme.
> 

Sure.

> I've tested this patch set on a Lenovo X1C8 with vPRO and AMT enabled in the
> BIOS
> (the previous issues were soon on a X1C7).
> 
> I have good and bad news:
> 
> The good news is that after reverting the
> "e1000e: disable s0ix entry and exit flows for ME systems"
> I can reproduce the original issue on the X1C8 (I no longer have
> a X1C7 to test on).
> 
> The bad news is that increasing the timeout to 1 second does
> not fix the issue. Suspend/resume is still broken after one
> suspend/resume cycle, as described in the original bug-report:
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1865570
> 
> More good news though, bumping the timeout to 250 poll iterations
> (approx 2.5 seconds) as done in Aaron Ma's original patch for
> this fixes this on the X1C8 just as it did on the X1C7
> (it takes 2 seconds for ULP_CONFIG_DONE to clear).
> 
> I've ran some extra tests and the poll loop succeeds on its
> first iteration when an ethernet-cable is connected. It seems
> that Lenovo's variant of the ME firmware waits up to 2 seconds
> for a link, causing the long wait for ULP_CONFIG_DONE to clear.
> 
> I think that for now the best fix would be to increase the timeout
> to 2.5 seconds as done in  Aaron Ma's original patch. Combined
> with a broken-firmware warning when we waited longer then 1 second,
> to make it clear that there is a firmware issue here and that
> the long wait / slow resume is not the fault of the driver.
> 

OK.  I've submitted v5 with this suggestion.

> ###
> 
> I've added Mark Pearson from Lenovo to the Cc so that Lenovo
> can investigate this issue further.
> 
> Mark, this thread is about an issue with enabling S0ix support for
> e1000e (i219lm) controllers. This was enabled in the kernel a
> while ago, but then got disabled again on vPro / AMT enabled
> systems because on some systems (Lenovo X1C7 and now also X1C8)
> this lead to suspend/resume issues.
> 
> When AMT is active then there is a handover handshake for the
> OS to get access to the ethernet controller from the ME. The
> Intel folks have checked and the Windows driver is using a timeout
> of 1 second for this handshake, yet on Lenovo systems this is
> taking 2 seconds. This likely has something to do with the
> ME firmware on these Lenovo models, can you get the firmware
> team at Lenovo to investigate this further ?
> 

Please be very careful with nomenclature.  AMT active, or AMT capable?
The goal for this series is to support AMT capable systems with an i219LM
where AMT has not been provisioned by the end user or organization.
OEMs do not ship systems with AMD provisioned.

I don't know that this series will work properly with AMT active, and
we will need more guidance from Intel's team to enable that feature.
Please lets keep that discussion separate from this series.


> Regards,
> 
> Hans
> 
> p.s.
> 
> I also have a small review remark on patch 4/4 I will
> reply to that patch separately.
> 

Thanks.

> 
> 
> 
> 
> 
> 
> 
> On 12/14/20 4:34 PM, Mario Limonciello wrote:
> > commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME
> systems")
> > disabled s0ix flows for systems that have various incarnations of the
> > i219-LM ethernet controller.  This was done because of some regressions
> > caused by an earlier
> > commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
> > with i219-LM controller.
> >
> > Per discussion with Intel architecture team this direction should be changed
> and
> > allow S0ix flows to be used by default.  This patch series includes
> directional
> > changes for their conclusions in https://lkml.org/lkml/2020/12/13/15.
> >
> > Changes from v3 to v4:
> >  - Drop patch 1 for proper s0i3.2 entry, it was separated and is now merged
> in kernel
> >  - Add patch to only run S0ix flows if shutdown succeeded which was
> suggested in
> >    thread
> >  - Adjust series for guidance from https://lkml.org/lkml/2020/12/13/15
> >    * Revert i219-LM disallow-list.
> >    * Drop all patches for systems tested by Dell in an allow list
> >    * Increase ULP timeout to 1000ms
> > Changes from v2 to v3:
> >  - Correct some grammar and spelling issues caught by Bjorn H.
> >    * s/s0ix/S0ix/ in all commit messages
> >    * Fix a typo in commit message
> >    * Fix capitalization of proper nouns
> >  - Add more pre-release systems that pass
> >  - Re-order the series to add systems only at the end of the series
> >  - Add Fixes tag to a patch in series.
> >
> > Changes from v1 to v2:
> >  - Directly incorporate Vitaly's dependency patch in the series
> >  - Split out s0ix code into it's own file
> >  - Adjust from DMI matching to PCI subsystem vendor ID/device matching
> >  - Remove module parameter and sysfs, use ethtool flag instead.
> >  - Export s0ix flag to ethtool private flags
> >  - Include more people and lists directly in this submission chain.
> >
> > Mario Limonciello (4):
> >   e1000e: Only run S0ix flows if shutdown succeeded
> >   e1000e: bump up timeout to wait when ME un-configure ULP mode
> >   Revert "e1000e: disable s0ix entry and exit flows for ME systems"
> >   e1000e: Export S0ix flags to ethtool
> >
> >  drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
> >  drivers/net/ethernet/intel/e1000e/ethtool.c | 40 ++++++++++++++
> >  drivers/net/ethernet/intel/e1000e/ich8lan.c |  4 +-
> >  drivers/net/ethernet/intel/e1000e/netdev.c  | 59 ++++-----------------
> >  4 files changed, 53 insertions(+), 51 deletions(-)
> >
> > --
> > 2.25.1
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
