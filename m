Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 022D3CD2BFF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Dec 2025 10:15:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AABCA60DA4;
	Sat, 20 Dec 2025 09:15:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IQ9R6U8JxvAC; Sat, 20 Dec 2025 09:15:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B16E960B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766222111;
	bh=tOolmYpE/VefvLcjCcRGnmMNVBTZE3w0SJXpKO4JXyQ=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=J0xAtsjrCIbzuOsEovEBuLEsMr6eDE/9woWwVuhoBiAGS61zi4LnvFkyLMnGnbiHR
	 Xg1oL+MHznknV1SUuAEyxPbeLzUxfUFlFm+Mb4mt5t6tEVUFrLK5Q4lZtn8M+L/ui3
	 ebjLjPYonfbcxa7v8C2aqaIzvtvt+Ee1ZHtYD31PI1F4r4v0Z6mcFOWfAK1G1b0TIF
	 P1XYNhzHOOT3mgXu+4DFLC/IY2KEAoKa0xbAVC7ys+OJ40cVZANwUHh9sauqZoR/oo
	 /oI+VcrJHXsGEke3jqAGOavNccZz/tJ6sf5Vnvka316pRAkJkP//gAl+TpB1UBfQX5
	 WLpUtGh+ZTYag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B16E960B83;
	Sat, 20 Dec 2025 09:15:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9261E1A6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:15:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7526960C17
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:15:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YgqWGS1x2fHt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Dec 2025 09:15:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.162.61;
 helo=pa4pr04cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E200360D9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E200360D9C
Received: from PA4PR04CU001.outbound.protection.outlook.com
 (mail-francecentralazon11013061.outbound.protection.outlook.com
 [40.107.162.61])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E200360D9C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:15:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pdHuTZqyAgurDD8oIFsT2fmRi5yCGSS7vvSXTHRKwgPiE9OEhwz/g2ICnncLm8WK6UhTTzy9LygeEA3m4N1PwhbXMRwHOuGsvvbJR5MQkGU3OfxqjLPkqJyZj+FGkLxUy6aM4d8QJFQYsFFCEMOsDayOmfrROb1jcE72PeAQ0A7n27/TlnpUJ2MQIX/YaUljr6Qt4VlTa2kCeAk2nxZ16MJ30tr6wFvYJ31R9chHugsGCJH9HAdKer8nYusxYGZoCwM8Dwky9TNnBeo0fGCybODFdGR9Fx2jqRY/1uaXL/CQNm9OWNnyTiiGTBApgx6LyoN0vpMjF2DMQwhAeIr+fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tOolmYpE/VefvLcjCcRGnmMNVBTZE3w0SJXpKO4JXyQ=;
 b=zQ+DRvj7SNzJClWEecbTzJhvM/jSRc1MHYDrrA6yN0Ap9gu6U1BZljKDH7UwMpxtMKlRgnjfXamapdWXBaXojFjHAbDa7N+Kn/WdxeDCINeNjW8QP+WXSt+vbmAJm+gYf9WDcVliZccQTLi/brv7nj4KOEU6cG7ef+hDeS0x6OaldBsLEZAlLHbylKDmxOFzkQAO/XFSBGik10mjJifzoyzOa5NlEBD0yKpDJr5PBwtIq7y9nXWGBgqM1IpBt3/Yj5RJGaPK18ESLX8OvoRDUVJl6cw1XsJvLvRzLDmxXHqyZCXXatjNR2qauf5WsktyOOjS1AAo7wklyXlGjvJ0zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by GVXPR10MB8252.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:11b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.10; Sat, 20 Dec
 2025 09:15:04 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9434.009; Sat, 20 Dec 2025
 09:15:04 +0000
To: Tony Nguyen <anthony.l.nguyen@intel.com>, "aleksandr.loktionov@intel.com"
 <aleksandr.loktionov@intel.com>, "jacob.e.keller@intel.com"
 <jacob.e.keller@intel.com>, "przemyslaw.kitszel@intel.com"
 <przemyslaw.kitszel@intel.com>, "maciej.fijalkowski@intel.com"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v2] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcbbnPqe0jZadJXkuf5e+GzC20xLUoj2kwgADsDgCAAMsB0A==
Date: Sat, 20 Dec 2025 09:15:04 +0000
Message-ID: <AS1PR10MB5392F8DEC18685C11BBB8C3F8FB6A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251215115416.410619-1-vivek.behera@siemens.com>
 <DU0PR10MB538764D2C70EACED000EE3088FA9A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
 <64e522bc-60e4-469c-9e18-5db1fbbe67f6@intel.com>
In-Reply-To: <64e522bc-60e4-469c-9e18-5db1fbbe67f6@intel.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=f37988e8-fd53-4f8c-8da3-e1672ec00b9b;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-20T09:13:53Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|GVXPR10MB8252:EE_
x-ms-office365-filtering-correlation-id: 910cacc0-c013-42d2-40c7-08de3fa8432d
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AFT8Phd6Q8oR4KD8BOG1psZaQj/a1p7MBJgD5vpsv8KZQNNK5Nan3ex9QI/O?=
 =?us-ascii?Q?IJ+GVg414hCCchefVOKuZMdXE0+rZ4BojxO2grlgAsFjBLxcvTa5uqEw5MIY?=
 =?us-ascii?Q?D7PH9rbcvU5feyauM5GTBiHZLnLb7ZbQE9wxwmORL1VxXPoUkdQOdeI9cUbO?=
 =?us-ascii?Q?AvQcnr68Vs9vwrlbIV811A9xHPpVZqzhbMI5LfGKeS3a0T4GGxceu6tbzHey?=
 =?us-ascii?Q?nZLJ6wJj6xiBRRuOzj/9ax4Ay8yPHD/lu+kzV4M156zUIgFa1qKy97eQBMHT?=
 =?us-ascii?Q?q45Xg5ze/9RIPDcxFdB8cBhi+DXxe0QONnJWYmzWSR12FSUNnu4t/PjRpgUE?=
 =?us-ascii?Q?bnQ28H3p1PJAxUxar/zewV5gnvcBvKQYM2uCXKVx/FJWkKySGQnV25QcGa6E?=
 =?us-ascii?Q?i/zFO/9g+fNfz4cpyLBZb2BcPOSZ+DRZK1qbK0Cm6iY/AZY5Fjma682V3RIY?=
 =?us-ascii?Q?PxaqSqci85nwzbkUQbIObAnFFJKFFS7vuSiRzhrH4Xa2cLKeUCuNJYwwUyIM?=
 =?us-ascii?Q?7xAxXutVo8NowhlIyoDmJfSfB94maxmM0sMXTCvGUw3XSO174+mEkJ8XdHhT?=
 =?us-ascii?Q?e+SRG213QdgSCwL7uYmk5OoliSdHYdHvgYM5GPp/yK9ojICcv6oZXAH1qo0k?=
 =?us-ascii?Q?GCfp2rTtsLcS4a8nGQBjkyhBR43N+xHG6tnzR1pZ3U9IjsY4gUZt4+X+/Jje?=
 =?us-ascii?Q?aULBfpECDoyaty+mcXyXWnx52wtPW4DSF6EcHgd6zpb+ZRe/vjvs41MzirIF?=
 =?us-ascii?Q?iXDL2Mk12iRUhGKH0C24NnshGGt1wleSMXnpOMxpJowl+GA77A5mzWRh2Szh?=
 =?us-ascii?Q?LVK4Rc9U/nDRUBMlP0RaOZzAP0E1wSz2YpWIw0IAxNYTcymlr9XsmsUJP+gG?=
 =?us-ascii?Q?PijsdZW3rZLiDJhwUI4/X9kbCDHGtcM6qM73KFMsi17Vqbu2ceoTILWLdwl0?=
 =?us-ascii?Q?Uzp9sKDIJgYJRKnKratA1zUoaU3HG5gfiILJVv2gdgpW8KsJ9LTS5T2iXV8q?=
 =?us-ascii?Q?U8Y18u1RSZIIyEs3mGh5IELljuhkCg3kYoXdVXluUl6bL8r91uWei9RKg7B0?=
 =?us-ascii?Q?Y7pMAiieU6Q9/SQBLfAo6Sm+UqMXxtdR+muEoT/LEXdG8hva20EtaoRW6z4S?=
 =?us-ascii?Q?mpqwBEuKIyQtrtpn9qHoaF94foLT2g9N017VWSBSI6VgsAaNvLbJ0r/uOKf7?=
 =?us-ascii?Q?xhig4FsO6yA7RttGNA4yfSEapU9YmJGgEKe+TcPSdz0orceC3bXHK76OsCAO?=
 =?us-ascii?Q?wOi0wXXtp3Vg90qW06OJlaIhnbXrOFuJSQbBmnyZKx5yt9DQVIuoMW2BVsit?=
 =?us-ascii?Q?h09A0zXvEwgKYnG2Pe6yDAmCtn5/jW0Yan9uNW1jdlapD90gFy2wqYK3oxIj?=
 =?us-ascii?Q?q962QSDi/7++/3aSsRA441Kp3/yVqIVSoU+W4va0GoQk4m/ayOJlrEXMivtU?=
 =?us-ascii?Q?ukF279N+OlwsuvJi95HPElZHaP1ChU0LhZEGIdC32z7IIAqozcZanuSg5fON?=
 =?us-ascii?Q?EbtCrhNy+QpZzr0gD9SColXTHYQPZl0Md6k0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mEudso/+uNzKqodXSCP2wqBdGxB40Mvk7Aseq5F30Qqq9P8g1yw57x3SGbhj?=
 =?us-ascii?Q?63qaifXD5C8a6ILhMXR7lULNTPec2ztp4ag3F7ws3POKEAhXu56VerssIiVz?=
 =?us-ascii?Q?taA6YUJnYaoJjIH2KYU+G7ZgzH3cepvHZVFDp07Pk97BviKjz8oj6bdrau5I?=
 =?us-ascii?Q?G1mogBxnY7Owj94K5WBds270X6vgW7ENuZEpGP7hIyyTf8QdXcDbVw/J/dI9?=
 =?us-ascii?Q?uvC26KzgS1EIKkbr7AAi6rtZmXkB2rOt7kJ4RYX+J4aVHFuVsILXK//f5gmY?=
 =?us-ascii?Q?LPrQotDjHZK2EwlLMshoxT5SebMyjAwso0Hq9WBZml4deQe/AZyLCovivx6Z?=
 =?us-ascii?Q?h1YJ1vNw+O/APQmdowoQzGAAShc0KPvwAaXxvVmcS8nkuqudHrEvRM/6dLtj?=
 =?us-ascii?Q?jxUzeQ6hsu650f59SKEQErTKdhibIWedcsuBbKyQGmbZ3f8H5U+e29XlArof?=
 =?us-ascii?Q?G+plFJHziEfbuOzNiSWF3nsNw0OrawS4uB/c36u2goPtIz2AuhGs4BN4BSNT?=
 =?us-ascii?Q?TOj274D32KpIvkNJgkEilgePVoS1wTByNwiV5poqogl9eKcsAghZBxw/dpVS?=
 =?us-ascii?Q?tjdiGGbxln81yZLVqxiQfHXPvNtDYJGfi/jwSbx7BG11zd/24Vk8J28n0/Li?=
 =?us-ascii?Q?DoVcZBHChdE0hO1BB9c5ILwucvrJHXC8+TqeuI8g1xlquktT0Scp0zF90x4z?=
 =?us-ascii?Q?P1s4CVUQJ5/dQwnuOq1I8RhygqJa66HCgcts/d9cpVk26Ad9kxMT+a5q+9Ix?=
 =?us-ascii?Q?A3LPUD+l9ttEw6F2NyC2RvkV1sZSGvEhRiscHuUt7xHiNMSb7bMNM4T2/v9M?=
 =?us-ascii?Q?PSMeNhhN87LrK7ushi7elPsPSSXXchPQEOiayZ15s7UNy7WYNjV5bTH46YQF?=
 =?us-ascii?Q?UcVehKHbPiIuD8B/1YcXYC4RfQHtdfas7PpfCxXXyB7wFtTexLNSiT8SYLlM?=
 =?us-ascii?Q?UW3TyrXTABJ6iti3RID7m51ZvA8XtVX/WpJ+CCVK1OLo4LIsByIgXT6SYmMt?=
 =?us-ascii?Q?CS9EAY7LS3v2aK1mTXLmHIgmrVW4VM/vd7wq0XbihJ3wt0Egz/lejjq9ep9i?=
 =?us-ascii?Q?43sQ3HbSMZR3u136A+anPkt6rnxtmMZOv0/K9s4bkd+sHOLCf0kgslaFrK36?=
 =?us-ascii?Q?jhZDOaqhxlH78h76mklZr5ZN6DJPnrxWtaZ39et7ZskQ8mU2W6Jj7QFD7DNS?=
 =?us-ascii?Q?136oz+HxyTzawSQ7fbrYdKzmNT2m1LgowfY65Niz4f4e7eFMSu8Jzd84aCCW?=
 =?us-ascii?Q?MLwovRDg4rwDj2lGHmwxfIktLa94M7XxPknjlDXylfLaVi9nAWE8dfdn3WyV?=
 =?us-ascii?Q?64SuLIHTGSxKAVygovALzq4J9O1gtFhlIH2fNDiIYaSvsAEiJi3rUaAt/p/F?=
 =?us-ascii?Q?jwEdMA1Q814NGDtQxkEevUA/g7WTEP88svsRKcFKUO3Wt55SaRMpoceB7J4y?=
 =?us-ascii?Q?M2ORUL/peo6fsa41vldQyDc4NORoDSFQyNCvPFtJGBhKa1gIuJn3X5EoWywU?=
 =?us-ascii?Q?TCp9EYE8Bm3ouiyfYcNFab0pHJf8cFt28w3HSHBB541GX4V5OL/px7mryyxQ?=
 =?us-ascii?Q?Y84psLmDlH4NoBHEx31M76re9jC32Wt5ZQ0Q3yxtMZmPLqseyasYakGhEt4O?=
 =?us-ascii?Q?rpTwxNfrXkoIo+Am3HAl/8g2iwthYTQA7fjBaDl17Q8vny/2OSI50BsaR6WG?=
 =?us-ascii?Q?RsndbAbynvUpfRs1WJkUd3XUYqepadhIrDEHK91lWjJqA8VDjGOoNYWQ/UCH?=
 =?us-ascii?Q?qsJSgH0UEA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 910cacc0-c013-42d2-40c7-08de3fa8432d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2025 09:15:04.7127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jDci9Ai/G4TKj2AT4zS0wkURbO/ZpdcRz2MLP3R320cn+xigyKWibxKvNo6WX0OFVAuCDv6uGRduH9J4gmylsQZ/onQiaiwShuvFKpqo19w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR10MB8252
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tOolmYpE/VefvLcjCcRGnmMNVBTZE3w0SJXpKO4JXyQ=;
 b=GRZ6xq7UkCJXA9HIW7cWHyKK8zZFCw5mcO8kXMAynztKuU05I9T2QTgxJpfhNyDA1IjtHpk0Yy8Y5+62Y5jOQTvBvZ3KolOmRR5dn+xVYe/Bm126nxaOsRLTnCZ4ZhoCtqNNlF1+gWT/ZZYF3hpY8l83dYqq8uMPJMibBpAh8Exo3nK8SdZ5i+ZVaCscPJDLlv0oupX81H5QA0Q6MIboaV4+0r1JQGRe2tEJVvoThmM9E3nhNbHLlGihpLjIIMpK2xbzAPyf+ZChkcMZWIsjTpj2KW+wP/pfhym5vjNBc/cszMDcTeRVq3lVFfKNDUVsUK5Uecb/8zkGE0E+syiEsQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=GRZ6xq7U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Tony

> -----Original Message-----
> From: Tony Nguyen <anthony.l.nguyen@intel.com>
> Sent: Friday, December 19, 2025 10:07 PM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> przemyslaw.kitszel@intel.com; maciej.fijalkowski@intel.com;
> sriram.yagnaraman@ericsson.com; kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [PATCH iwl-net v2] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
>=20
>=20
> On 12/18/2025 11:05 PM, Behera, VIVEK wrote:
> >
> >
> >> -----Original Message-----
> >> From: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> >> Sent: Monday, December 15, 2025 12:54 PM
> >> To: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> >> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> >> maciej.fijalkowski@intel.com; sriram.yagnaraman@ericsson.com;
> >> kurt@linutronix.de
> >> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC
> >> PRC1) <vivek.behera@siemens.com>
> >> Subject: [PATCH iwl-net v2] igb: Fix trigger of incorrect irq in
> >> igb_xsk_wakeup
> >>
> >> The current implementation in the igb_xsk_wakeup expects the Rx and
> >> Tx queues to share the same irq. This would lead to triggering of
> >> incorrect irq in split irq configuration.
> >> This patch addresses this issue which could impact environments with
> >> 2 active cpu cores or when the number of queues is reduced to 2 or
> >> less
> >>
> >> cat /proc/interrupts | grep eno2
> >>   167:          0          0          0          0 IR-PCI-MSIX-0000:08=
:00.0
> >>   0-edge      eno2
> >>   168:          0          0          0          0 IR-PCI-MSIX-0000:08=
:00.0
> >>   1-edge      eno2-rx-0
> >>   169:          0          0          0          0 IR-PCI-MSIX-0000:08=
:00.0
> >>   2-edge      eno2-rx-1
> >>   170:          0          0          0          0 IR-PCI-MSIX-0000:08=
:00.0
> >>   3-edge      eno2-tx-0
> >>   171:          0          0          0          0 IR-PCI-MSIX-0000:08=
:00.0
> >>   4-edge      eno2-tx-1
> >>
> >> Furthermore it uses the flags input argument to trigger either rx, tx
> >> or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> >> documentation
> >>
> >> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and
> >> helpers")
> >> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> >> Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
> >> ---
> >> v1:
> >> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flo=
r
> >>
> e.kernel.o%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C1540e21c5
> 79
> >>
> 548f5fddc08de3f429f20%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >>
> 9017752565580869%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRyd
> WUsIlYi
> >>
> OiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C
> 0%
> >>
> 7C%7C%7C&sdata=3DMPBbmZMTBMzxIthA3AnmBB9tQhJiY8bUj4S8JtNsV4s%3D
> &reserve
> >> d=3D0
> >> rg%2Fintel-wired-lan%2F20251212131454.124116-1-
> >>
> vivek.behera%40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens
> >>
> .com%7C1199ec6c63494235f90408de3bd0eefa%7C38ae3bcd95794fd4addab42e1
> >>
> 495d55a%7C1%7C0%7C639013965726377756%7CUnknown%7CTWFpbGZsb3d8
> >>
> eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
> >>
> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DuTarFq1Uj3h0H1aZeN
> >> 06HWf0ts3BsMJkfPq9pPBegrI%3D&reserved=3D0
> >>
> >> changelog:
> >> v1
> >> - Inital description of the Bug and fixes made in the patch
> >>
> >> v1 -> v2
> >> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> >> configuration
> >> - Review by Aleksander: Modified sequence to complete all error
> >> checks for rx and tx
> >>    before updating napi states and triggering irqs
> >> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix
> >> use case)
> >> - Added define for Tx interrupt trigger bit mask for E1000_ICS
> >> ---
> >>   .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> >>   drivers/net/ethernet/intel/igb/igb_xsk.c      | 98 +++++++++++++++++=
--
> >>   2 files changed, 92 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> >> b/drivers/net/ethernet/intel/igb/e1000_defines.h
> >> index fa028928482f..9357564a2d58 100644
> >> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> >> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> >> @@ -443,6 +443,7 @@
> >>   #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Chang=
e */
> >>   #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min.
> threshold
> >> */
> >>   #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset
> Aserted */
> >> +#define E1000_ICS_TXDW      E1000_ICR_TXDW   /* Transmit desc written
> >> back */
> >>
> >>   /* Extended Interrupt Cause Set */
> >>   /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> >> a/drivers/net/ethernet/intel/igb/igb_xsk.c
> >> b/drivers/net/ethernet/intel/igb/igb_xsk.c
> >> index 30ce5fbb5b77..d146ab629ef0 100644
> >> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> >> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> >> @@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> >> qid, u32
> >> flags)
> >>        struct igb_adapter *adapter =3D netdev_priv(dev);
> >>        struct e1000_hw *hw =3D &adapter->hw;
> >>        struct igb_ring *ring;
> >> +     struct igb_q_vector *q_vector;
> >>        u32 eics =3D 0;
> >>
> >>        if (test_bit(__IGB_DOWN, &adapter->state)) @@ -537,13 +538,91
> >> @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> >>        if (!igb_xdp_is_enabled(adapter))
> >>                return -EINVAL;
> >>
> >> -     if (qid >=3D adapter->num_tx_queues)
> >> +     if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> >> +             /* If both TX and RX need to be woken up */
> >> +             /* check if queue pairs are active. */
> >> +             if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> >> +                     /* Extract ring params from Rx. */
> >> +                     if (qid >=3D adapter->num_rx_queues)
> >> +                             return -EINVAL;
> >> +                     ring =3D adapter->rx_ring[qid];
> >> +             } else {
> >> +                     /* Two irqs for Rx AND Tx need to be triggered *=
/
> >> +                     u32 eics_tx =3D 0;
> >> +                     u32 eics_rx =3D 0;
> >> +                     struct napi_struct *rx_napi;
> >> +                     struct napi_struct *tx_napi;
> >> +                     bool trigger_irq_tx =3D false;
> >> +                     bool trigger_irq_rx =3D false;
> >> +
> >> +                     if (qid >=3D adapter->num_rx_queues)
> >> +                             return -EINVAL;
> >> +
> >> +                     if (qid >=3D adapter->num_tx_queues)
> >> +                             return -EINVAL;
> >> +
> >> +                     /* IRQ trigger preparation for Rx */
> >> +                     ring =3D adapter->rx_ring[qid];
> >> +                     if (!ring->xsk_pool)
> >> +                             return -ENXIO;
> >> +                     q_vector =3D ring->q_vector;
> >> +                     rx_napi  =3D &q_vector->napi;
> >> +                     /* Extend the BIT mask for eics */
> >> +                     eics_rx |=3D ring->q_vector->eims_value;
> >> +
> >> +                     /* IRQ trigger preparation for Tx */
> >> +                     ring =3D adapter->tx_ring[qid];
> >> +                     if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> >>> flags))
> >> +                             return -ENETDOWN;
> >> +
> >> +                     if (!ring->xsk_pool)
> >> +                             return -ENXIO;
> >> +                     q_vector =3D ring->q_vector;
> >> +                     tx_napi  =3D &q_vector->napi;
> >> +                     /* Extend the BIT mask for eics */
> >> +                     eics_tx |=3D ring->q_vector->eims_value;
> >> +
> >> +                     /* Check and update napi states for rx and tx */
> >> +                     if (!napi_if_scheduled_mark_missed(rx_napi)) {
> >> +                             trigger_irq_rx =3D true;
> >> +                             eics |=3D eics_rx;
> >> +                     }
> >> +                     if (!napi_if_scheduled_mark_missed(tx_napi)) {
> >> +                             trigger_irq_tx =3D true;
> >> +                             eics |=3D eics_tx;
> >> +                     }
> >> +                     /* Now we trigger the required irqs for Rx and T=
x */
> >> +                     if ((trigger_irq_rx) || (trigger_irq_tx)) {
> >> +                             if (adapter->flags & IGB_FLAG_HAS_MSIX) =
{
> >> +                                     eics |=3D ring->q_vector->eims_v=
alue;
> >> +                                     wr32(E1000_EICS, eics);
> >> +                             } else {
> >> +                                     if ((trigger_irq_rx) && (trigger=
_irq_tx))
> >> +                                             wr32(E1000_ICS,
> >> E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> >> +                                     else if (trigger_irq_rx)
> >> +                                             wr32(E1000_ICS,
> >> E1000_ICS_RXDMT0);
> >> +                                     else
> >> +                                             wr32(E1000_ICS,
> >> E1000_ICS_TXDW);
> >> +                             }
> >> +                     }
> >> +                     return 0;
> >> +             }
> >> +     } else if (flags & XDP_WAKEUP_TX) {
> >> +             if (qid >=3D adapter->num_tx_queues)
> >> +                     return -EINVAL;
> >> +             /* Get the ring params from Tx */
> >> +             ring =3D adapter->tx_ring[qid];
> >> +             if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> >> +                     return -ENETDOWN;
> >> +     } else if (flags & XDP_WAKEUP_RX) {
> >> +             if (qid >=3D adapter->num_rx_queues)
> >> +                     return -EINVAL;
> >> +             /* Get the ring params from Rx */
> >> +             ring =3D adapter->rx_ring[qid];
> >> +     } else {
> >> +             /* Invalid Flags */
> >>                return -EINVAL;
> >> -
> >> -     ring =3D adapter->tx_ring[qid];
> >> -
> >> -     if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> >> -             return -ENETDOWN;
> >> +     }
> >>
> >>        if (!READ_ONCE(ring->xsk_pool))
> >>                return -EINVAL;
> >> @@ -554,7 +633,12 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> >> qid,
> >> u32 flags)
> >>                        eics |=3D ring->q_vector->eims_value;
> >>                        wr32(E1000_EICS, eics);
> >>                } else {
> >> -                     wr32(E1000_ICS, E1000_ICS_RXDMT0);
> >> +                     if ((flags & XDP_WAKEUP_RX) && (flags &
> >> XDP_WAKEUP_TX))
> >> +                             wr32(E1000_ICS, E1000_ICS_RXDMT0 |
> >> E1000_ICS_TXDW);
> >> +                     else if (flags & XDP_WAKEUP_RX)
> >> +                             wr32(E1000_ICS, E1000_ICS_RXDMT0);
> >> +                     else
> >> +                             wr32(E1000_ICS, E1000_ICS_TXDW);
> >>                }
> >>        }
> >>
> >> --
> >> 2.34.1
> >
> > Hi Intel Colleagues,
> >
> > Would you be submitting this patch to netdev list after your internal v=
alidation
> just like the igc patch?
>=20
> Hi Vivek,
>=20
> Yes, this will follow the same path as the igc patch.
>=20
> As these drivers, and this patch, are similar many of the recent comments=
 on the
> igc patch apply here as well. Could you apply the applicable changes/upda=
tes
> from igc to here as well?

Sure. I will include feedback and suggestions submitted for the igc patch h=
ere as well
>=20
> Thanks,
> Tony
>=20
> > Regards
> >
> > Vivek

