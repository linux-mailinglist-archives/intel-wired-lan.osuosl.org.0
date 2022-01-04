Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 139C1484B01
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 00:03:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6B4A409BC;
	Tue,  4 Jan 2022 23:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9itogQpbZ7sP; Tue,  4 Jan 2022 23:03:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A465940991;
	Tue,  4 Jan 2022 23:03:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 626AC1BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 23:03:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DA6060777
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 23:03:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oScYjCvYy7T8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jan 2022 23:03:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0FB8760AC5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 23:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641337393; x=1672873393;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=06EcrgGUy3VoX2PQyVOwTlkEJhv1VrlYjDpwcFR4awg=;
 b=BqbODnJQ6cxpp/OdvR/ZJg/GcFIwEi7GG8Z/jHPZqooaSr/Uh702SZex
 PKBf7fQJhLIWUw1HZx68uwbJE7FvXKA9Ggo+78K+wwGTB/MWzak1tf3SP
 6lI7ZEjSfYKOnlXFwgz4B3HhM5xpgJAq9wP+ei7dc9WmIr3E+PmVAYyij
 9689G9nXUk3Yi/KoT2n5raKoyCG3PmlLPywSpWeEH25jA4mMXVTGV5ccb
 wNzMrCfMOvS7PRf4YGXmqEmb2QMsfmDceeFtOzDfd88NLhEAbMXy5o6t9
 Qv+MtQyriwhm1Y698E5osIo4YePfP0dDNw70Wv/R1fiOzG+YL34t/zYwm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="222993963"
X-IronPort-AV: E=Sophos;i="5.88,262,1635231600"; d="scan'208";a="222993963"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 15:03:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,262,1635231600"; d="scan'208";a="688751282"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 04 Jan 2022 15:03:11 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 15:03:11 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 15:03:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 4 Jan 2022 15:03:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 4 Jan 2022 15:03:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O80M9aSJm0SthUa/FxxEFn8jsZRrHlyQApY+RsEkzGdtzehiS+lIqABVIa7qnhi2xOez39/T54KV/QrVt74cupnhHrrb4DGyJQVGtB8RqY4X5JzES2ZByY0n3Aza6fQmssMGx82gROTyv/uaN35OsaF6zNd4Gn2fwGz7uRwrQY2TSo3vL7dqZJcbeW8aE0YANS2vTGNErEn/0cwpkcpfIfoRWBtxQOH7UXq4fPycIqKCg3Cz204EEqnOdm2ke0VyjpX5hdVHA7NSAITShx2KMEkAikphE1Kv45/xYnLnJRKq0jPe3TpCmRiyPxwFsnQ5PJ4ueiQJWEJrK0bN1MInWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=06EcrgGUy3VoX2PQyVOwTlkEJhv1VrlYjDpwcFR4awg=;
 b=LIo8WlmitbvYiPNKibWcfoczCvVkCOSTruGFZ/pwVMnsbxDVEOCYNcut2IvN6sLXE0hzymE32/OataQ5FTdBAw05wx7Yn2RqMPk1SeMMVrrl7sQJbNn8WM05BoJgjQSou24lr4hviU/+T0ija4vkAQF3bTgdstZkk4quqK8wnoXJVi8BXH3LE7Drn7bpNLfFDQxnVI9gapB0YehK3EEKkoCfIiGJ0YiLigLLwg6gVgVrmCRCJp8y/rcrBz9NiAxwcBlXYWn1yuW9MKhyngDlspgN/cnmqiWx0fUcYQBippVpyLushaF4kRQ65/QEG89FWFwqs2IwxPiqFP+uzAJa/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4542.namprd11.prod.outlook.com (2603:10b6:806:9f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.15; Tue, 4 Jan
 2022 23:03:09 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1%5]) with mapi id 15.20.4844.016; Tue, 4 Jan 2022
 23:03:09 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "jdamato@fastly.com" <jdamato@fastly.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-queue,PATCH] i40e: Remove unused RX realloc stat
Thread-Index: AQHX9fm9dJ8jQ9aBMUqR5iJwzSqraqxTkl0A
Date: Tue, 4 Jan 2022 23:03:09 +0000
Message-ID: <94315a5eb39d8f33cf4956eb300ca0a76bde489b.camel@intel.com>
References: <1640042998-117712-1-git-send-email-jdamato@fastly.com>
In-Reply-To: <1640042998-117712-1-git-send-email-jdamato@fastly.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9eeb2338-2b50-46bc-1a47-08d9cfd66083
x-ms-traffictypediagnostic: SA0PR11MB4542:EE_
x-microsoft-antispam-prvs: <SA0PR11MB45423308512D840923517B8CC64A9@SA0PR11MB4542.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H7tBaxRuKxp3kOcaVg/akjDKZR55NS1+C7ctZYEIoaO15hvnEkZGWMZs2gahxJtvvZ5B/RnS2GMUmMifOlno+o1RFKE5KvyABhonovDvzeDVkxsJdFQLKl7yGrfGAXCpLwmwCbiqwtXieOYfYqemD71Kune0ElKrqvLbRu1S1PwNf+O7H2wZMHowroJhjI9qz3Cwy8qmJSj4YcRSGP4hftIdLMpawQuRhkcrKp0sN4NAZokjKAM7OnNkf6kmxkdwZTGrQoYyqJMXkrDK50IBqe/xBQN3rqfr/AXunFb9O5orp8Vxlvxq4M7oEZ72KypwjqOLawt/QOFtOrgAd3dUMtEz63jO/3jtvimgovSjjQUpv1um6cL0hpVjAyYjM59K40SfEQo9BXyoCRa13Iv0CpTBXOuNHU3xB2RKGG2xrrRr7yy2hKs3gOfkZGQopJQxSiULEAPP2oCpg0hpIKUQEOBI2yeCCZagJ9wkAcT8+2gV4L7Fx7srPOtKTBarPNvOF/+IR3QrNP/JE34D84UGebXB/uFCu38B7xvxtUrgs1gB48lG8LFORCZ32ovl10JeuQDsCu5kaG6h91gys4Zv0udmHdghyDU91fJLxJUOJ8XvxlnB2P3x5gdOsx5H91X+4dfDfdM8hEDewWjMPlXMgF62+cxwF6GOGExKNe5Jvs8f5ZUyiVl44h53rQxQqi5xye/9iwSnlhZxp63jUIVQlx2QTONbjGpzxc9oi0+6bwJ2+ZOB/WB8c9xYYPEICpFA++Ae2HLIC/04ra8qcHPcsEL4xtrC+HoyBtRAebgRtPI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(82960400001)(508600001)(966005)(6512007)(4326008)(76116006)(26005)(8936002)(38070700005)(8676002)(91956017)(86362001)(186003)(64756008)(4744005)(36756003)(71200400001)(6506007)(66476007)(316002)(2616005)(38100700002)(66946007)(2906002)(66556008)(66446008)(6486002)(4001150100001)(122000001)(5660300002)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bG8wWm9Tbm1uRCsxRy9oalRsWGU1Y3lOZEtxcU5xZXZ1d2dtc002U0dQWW51?=
 =?utf-8?B?ZHhLcitPQUZwazRIMWxBOVZvTDNMeEt4N2xpZ0dNaEJoYnM5eE9DWFphbUFn?=
 =?utf-8?B?eE0waDVDci9IRDd4Z09xR3pxK3R4bVhEMVRlMjd0cnJielFwcFNQWW94TEpT?=
 =?utf-8?B?c2VOYmpFYXV1bU5pUnBpRFdiRVQ0OTBodDlXSy9jY3JOTUJOcmtrUXA4TGZ6?=
 =?utf-8?B?ZXVZc2R3aUdGS0pydjVwVEJRUnVoT0lNMDdlV1lWT21XY05uVFZFblZYVHlk?=
 =?utf-8?B?aVVISE10d3hURCsrYUNXYmZ5TnJ0T2pGcWJydUlickliakNkd0dJN211dzN4?=
 =?utf-8?B?eGRQNmp5cnVRbmJvMkJDelJ5RXFZQ3h6L1RvNmM1UHEwSGFSY1UvSHp5RER5?=
 =?utf-8?B?cFNsOWMwYjUwTk9CemVlNk1xWmJUZXd4bjlkQXYzaEpIb3ptTGdpZzkvcjFB?=
 =?utf-8?B?YUxyV1FyVitmcHd1OTRoaXRrdWJoL1lyZXZ3dGhLa0doaHdySUt4SDI3cjRC?=
 =?utf-8?B?WmRlSXI1YitZeS9GRldjSWF4aCsxS3JYTmVHd096NjlVQWZTWW1IK09FcExn?=
 =?utf-8?B?bXJPb0RVa29SWjNqczh1dldFRCtudTZvUlVkWG1STzUwemZReGVoOTY5RGtW?=
 =?utf-8?B?OG11RDVtb0JLNEJkeDFZYS95ZitlOUpobE9tK3pFV3orRWFwcEZ4WlNiSXA0?=
 =?utf-8?B?bDFNckd2KzhRVVc4MFl4OUhUaUVucU1razRJU1U4MEtPLzVZenpPMWpMb0l3?=
 =?utf-8?B?Smw3ajZBZDVMbHhXbm01S0ZBMjdSOUhxLytBazV4WjlweDd5NUJvWm9UdFlj?=
 =?utf-8?B?YzUxa1N6UTZDazFwajdKZzhTejRaL1JDajFnMWFrUlZPWUdQejU2dzYzVjly?=
 =?utf-8?B?K1d0NXNndXVMbWtJN2puNllsRFJad1VYbU1LU3VGODZxdXo2MEZxUndDa2dn?=
 =?utf-8?B?aWs1NHhsRTBEdFBNMmttOGN4SzVhUFh0ZjNSY0RYZ3hKTEhuWWQraUMvNms4?=
 =?utf-8?B?TzRzT3hobHJCNHVTUXNRcmJ6WmJkdFJQSTVEejZRc1c1WVdaa1hwc2w5TGY2?=
 =?utf-8?B?VzNkWEQ5aTdObTJFL3Arb1lNQXNyNUxiTnlFUmt6bDRWQUpFdDhrRGJ2YUlw?=
 =?utf-8?B?b2JKTnhldkJIMk96QTZ3alY5V3FVcDh0RmYwb1RHbzFhWWY2ZTMxTGNKbGtH?=
 =?utf-8?B?ZWh4a09obCtETzkrSzZpeWdkOVpqTmczZUFTVzZoTTRHaTk4VUh1TTNBd09i?=
 =?utf-8?B?VFpyY1dycSt0THdyK09TZk8zODZmMFNJeEJna2d4THhCK2tyUERoQVpEdDVR?=
 =?utf-8?B?bFZLcG9xYnVwa0NURnpJV0ZVUVpnNlhhODJpN2l5YmdNdXhKRDQyQzcxNVI0?=
 =?utf-8?B?K2FyT244dWtYMHd1MHV5a2gxZ0t6bkpXZkZIZnNpamgrcXB2SDZqbGM2ajBI?=
 =?utf-8?B?SnhBc0liWUxTRFErUnNvNU4vMnl1MmNkUDJ4RVRpS1hJUlhMSHVhV1RlVFJS?=
 =?utf-8?B?ZTVXNGRqNGVKb29Lb1VFZzQvSy9PRks2d3dyUDdqWnhXa3RJSk9YaWN3Wkx4?=
 =?utf-8?B?a0NoSmF5S3pXWTF1T0FiU2FQalc4VENmQUZoc0dsK3RjNW5hdkNqMkhkZG9O?=
 =?utf-8?B?Zi8veWdKNmdmYUY5UGNWOEM4a2VINkljSmlacVVhNmoxR2RHaGMrZ3ZzYkxG?=
 =?utf-8?B?RUZWeUNPd09VMzhMMk5haWQzSTlNU1JEZmk3aENoQ3Z5RDE1RGEycEMwZDE3?=
 =?utf-8?B?VTNId1RzTTBscSt6UkJuRVRiOG0xWVl0ajF3VHE1dlh3MkxrTXNWZDhUaG1J?=
 =?utf-8?B?ZitBTnFkdHdxVnRudWhsWGc1eTdDNFdsRXJSQ1dhUDRUaHp0TmllZ0VDMURD?=
 =?utf-8?B?S2ZId09nL2FuMEVDVCtpazdUaFljSTFsNzlVNmd1YmFqak94c2xaZElpR1l1?=
 =?utf-8?B?YWdJNHZZRElSdENlU0Z0cnVWWHhsMVN5MXIyZzNqUFF2dUdNVUVDaDNoZlZI?=
 =?utf-8?B?eTVZU0RDSmh3dm5WYm9iSG1Zc3hlek5xQ3FIbDJpS0ZuOEhDdmtPY3VLdnRS?=
 =?utf-8?B?TnJ5Q0hSVzJoNm1PVWU2WlRPMWQ1VmdUbmR4WXFyRkh6MXcwV0VnYTBRaEVi?=
 =?utf-8?B?aDdyV0tpR3BEQW1yb0N6K0dHc3JoMWw2L1ZsS2lYVVlmbC94dEkzUGtBd1Zz?=
 =?utf-8?B?cjk3dGZEN25rUlVUVEVrQ2hMU24wUTJFV1hJRlBQb1l6RWtZRllBOGJEam03?=
 =?utf-8?Q?yeYuW6E9+nIyJG7qYe5UFm3gSYQJ9DPRpZvI/Hyk7A=3D?=
Content-ID: <B7C27EA728AFD74BBC32131C10132AE5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9eeb2338-2b50-46bc-1a47-08d9cfd66083
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2022 23:03:09.7697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: itqVoXgcChIxLvONOlma16uXN9fg2vkIlLlPqHqEmh5iFeJ0qq7wbKujq3xa63WuHkBjwGJOQmD2sAs5PK1j7IcLGZZi6LdHRSW/jDh7Ypo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4542
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-queue,
 PATCH] i40e: Remove unused RX realloc stat
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

On Mon, 2021-12-20 at 15:29 -0800, Joe Damato wrote:
> rx_stats.realloc_count was not being incremented after 1a557afc4dd5,
> so
> remove it.

A couple of nits for you. When referencing a commit, you should include
the title in addition to the SHA [1].

Also, unused code should be sent to next-queue.

Thanks,
Tony

> The debugfs string was left but hardcoded to 0. This is intended to
> prevent breaking any existing code / scripts that are parsing debugfs
> for i40e.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> Fixes: 1a557afc4dd5 ("i40e: Refactor receive routine")

https://www.kernel.org/doc/html/latest/process/submitting-
patches.html#describe-your-changes

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
