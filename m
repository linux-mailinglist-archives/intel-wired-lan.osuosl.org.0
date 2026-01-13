Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73405D1695F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 05:04:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBFF9806ED;
	Tue, 13 Jan 2026 04:04:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fiG5B0OQ6xZ6; Tue, 13 Jan 2026 04:04:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7EBA806C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768277064;
	bh=7waMic+F8/JBX9pFWk22I1Ik0pl2fIBggjDYOsifSLc=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=4Re1JBvBHmTqmo92HcLkHnQy8f069DxTtNtQ6eg97odZh+FS648ZkRSQ93oDvXL5z
	 EgOeuysZ2PjRD5VVs+TlP4libxg8i+ZC7/o5AJf+TZIiQLWPuDzJvsUpz1H9eNJBKi
	 n60ux6MKduK3SoulJyDFD01pV6bTRi6NdIfYkFZp1ihCjdRqA9xwGoM+8hRxWSoXBE
	 dgvAqk4ufTkfbsSOimgc5zLkHj6c80vFR5mbTbf4Bbera1TrUskXCeq7gzDUsHFwJ4
	 NxPd35JSXeEScWpMfT8BgBHd8qQ1nGA0sxUny+/bXAO1n+VBKj85MzFPFY8UkY4DZw
	 zEUtZ0Jf5/92A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7EBA806C1;
	Tue, 13 Jan 2026 04:04:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E49C231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 04:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BE8B611E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 04:04:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0_hSAF4JwErB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 04:04:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.66.23;
 helo=duzpr83cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F04AC611E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F04AC611E4
Received: from DUZPR83CU001.outbound.protection.outlook.com
 (mail-northeuropeazon11012023.outbound.protection.outlook.com [52.101.66.23])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F04AC611E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 04:04:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xTGGoS/08pJJKM+SVG7mWy4Ymw7bF0BNsESkXeD2Tmu1S1EIlYqqtdaUJrwQgaYxXxoYaU8BQgTNoDrPHtgfp3GjDHECXi4i+XzpTLcZatStiehB5CwONxXqO4jXTKxVQZLml555sTJm8AUb4CXyq10T07D7PU0fAX8wMMPUiUSxBdvqdT8Wtk1vlcaOV+EkUod/rh67tJLaMw0VTcScXFFDlgiYFRuSr/VEGFp/maxDhaMgBnEL9uSdCZJA2N4Sq2HsG8QcKD44WnVRaivGHHYBwaUovZ2ipKr3ff8G/4rnvnw1QfZs2XOu6XcFlmHGxom2SXIIpoh869NzUMV7Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7waMic+F8/JBX9pFWk22I1Ik0pl2fIBggjDYOsifSLc=;
 b=rRbOvmJKvgHg9d2Ltc4YYCDCSZCnNWU/Znno0VdVuJABXSg6VlM9jvc0Cjg7tWwq7fW66zpHyuVNfWuh1q6zpkGlkrARvIdRkmdQ9bAl8aYKdxsrWasFiAmbZ1tqmNYpJEBFJVee7j95xYOjvfm4Gt+vK1kk58BmLVD5x5F9HfJxQNqqEgLPqv1dBqFg/v74XhMKzA91MkRvkeBZ1nzflhI1QECGy96P9IyPsx8l1M6GiHI/HReq5eVXnBywr12FKYcERuPmPTbXge/vxgJ+mAQcUGLjUUC5x+bSrzqlW3Y1FkvUCMLRkXuG8OUGuU2I0MQ8EXFhf+tFG+K/wWzm7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by DB9PR10MB7953.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:306::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 04:04:16 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 04:04:16 +0000
To: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcg8PrekTNf/vlH0OQtQBQJq0k07VPeixA
Date: Tue, 13 Jan 2026 04:04:16 +0000
Message-ID: <AS1PR10MB53927C23B340C8A900AACF138F8EA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
In-Reply-To: <20260112130349.1737901-1-vivek.behera@siemens.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=f05e3eda-3e98-489e-849b-c4c5e75e49f7;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-13T03:58:18Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|DB9PR10MB7953:EE_
x-ms-office365-filtering-correlation-id: ba5804ff-d1d4-4f2b-807f-08de5258d1c4
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007|13003099007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0xKIW/2Lm9ESZMfcn5lNDinIehnzSf0WNW7RI9tMhPRwb+sn72tjx7UrLt3p?=
 =?us-ascii?Q?NDwrLu6giYk+GDHBYflgQNZyuqRC2us8CAFnHbpHqVVLQn+/FxYIHS5RnhuR?=
 =?us-ascii?Q?jWmAX1TbNn6qWvd/C6vGskFYJbPm1FCj/+J0wJmIc34OAxQ4ox9g0SVVdPRd?=
 =?us-ascii?Q?Z9QPKPyQ4GswiJ3d/D/ticzFSmjfIcMPkMIWEwfPejeBXqg3t9oWzg0cKpgT?=
 =?us-ascii?Q?sQVulVu6YRSo1m7KfX+ydsgKEcbN7KC4eKYLf+VtTmFFgDBkd6pn7q35j4Jq?=
 =?us-ascii?Q?W8APAb7XX05/21uoODNA05rLofvz1BB+xTcme+FBfcQdQhMR0Tdp045tnyTJ?=
 =?us-ascii?Q?3HHRSkqbYRp+/pXUgRdLaj8/tZ+QmLaS8rLEWLJt8j2BuTCduYCy1SGpGRaN?=
 =?us-ascii?Q?ZH1VRBUwRBSK4dqj1xw7LyRKKi6S2F0sv5bVUYGjbQ0H2UCl1X0S9Q+m7eUz?=
 =?us-ascii?Q?VitTmL/BzUeQLySFuWD0XKLokh59iAZMnMdIHy0j8XUguDh0lrnMbdqgGVDa?=
 =?us-ascii?Q?yJsuQ6Yr0bbKPjbRkjrfmLe/bxBlPVKjEGcjsm5/7Qf46pFg+UXkB8pZMGsS?=
 =?us-ascii?Q?ti5cylAeTueeVGs5k8H/N2HzTvzu/28YC7A16n96Uat0qcPYe+x0nw23YAtk?=
 =?us-ascii?Q?99pBoXJME0PgpEQVc6qe4pgnhpEJjFaBUXS8kwWDBj1K7x9aDsd2fL6VCHXM?=
 =?us-ascii?Q?GzrzbkL2WIuHKn/LOH6zNSvvDibjddSzkqPOJZJq9gYNrvGxFz5g2Ht26rnZ?=
 =?us-ascii?Q?ARRigKVVlZbizdNHkOvElxVIaER4caVBuDvj4OxUxsIr64V733fi07AyEk8+?=
 =?us-ascii?Q?u9ZTYaSOoEMATJsaY63WoiLZr3CbRTds+KLefkbqBXP+pFdOhK9zupCXtx87?=
 =?us-ascii?Q?C4e6IbdaBllPO/wk1dWyiLJl6cezwmLjc+wcbaVsG2IMU4ZuNP83s7ujMvSg?=
 =?us-ascii?Q?jhQFkXdN5Swz1wD5qClZP7ftXMJQM1rMz7Nrv93gl5meitZtUjIyarSPdFZi?=
 =?us-ascii?Q?hSpf9FLrmIvHEVLTt4AHLRJFsfKdLlrLmkGTP1g5ud52ToFZzQgPnqsu1LAa?=
 =?us-ascii?Q?bI1lMG+9VsYKPCzhYCm902iYE7fJHqh82TMk0xtHhEgptDFcPRWipuaOpXhC?=
 =?us-ascii?Q?0YU5gCGFE2At4gdlHo9waPqzwrVUnetFwVB5vlx5dYf9Q68bU+/6mZ15durL?=
 =?us-ascii?Q?pxhUoGEW0/upOZhScTSOsfMnnwmsiQ8P7/pfdXOls8b1ppkfwWxpyCh9+BID?=
 =?us-ascii?Q?xx6ZVYjKcE65NAldBWuLwv2rFO309UwQyGJLPqm09vIo1lR7DHJSi9kczVR1?=
 =?us-ascii?Q?bIqGNvvWZNhhz+zQLW5MH2PUL8VRMOKIz7WZJOPF/9Rereg48nWatF7Twd9M?=
 =?us-ascii?Q?6pJ39faXfs3xsfe+SwstoFKGMN3bit0HgSxf4osl7zh4JcTtYVk/mX0lHlV+?=
 =?us-ascii?Q?HrOybJLvb6l+V3MYO00D6gl1sXeZ7fNJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Tk7YR6nILvj1g6baIj4mddtx9me41LN3xFo21LSjf11+m4VEm9LLMLe6ZhKs?=
 =?us-ascii?Q?V6MRvN2k1PU+C3aRgp49QywDQKr8lcZHZ28BZdRgUzZI/TV6WJxlUJfepTM3?=
 =?us-ascii?Q?KK/ckEWxEnZwZMCMgCA0BsE8+V8xzdpDoig5LLFzymatrenlh5w1K3A46Sz5?=
 =?us-ascii?Q?q13ZwjX+4fRKFytLabDnedLLBsJ5d88kVT8/XRyf4rRUt7EmX1l18aGZSQ7p?=
 =?us-ascii?Q?RTd5nqhX7gGw9QdSK/vAHdncN00KI9EjyIoL3oLIsGLxXfyTFwMDPnj2SXnn?=
 =?us-ascii?Q?4hYW/ro13mgMNjiN7juITeP4wQYgq2tkistEF+6sJyiY3ZBI+2A9nC2ZvpXi?=
 =?us-ascii?Q?OnV3QaiFdVTv6Cvzc6ctdyZ4TteMm+4esgnPjLidhmVBeOJoCPXzFKjwjuIr?=
 =?us-ascii?Q?3Ee7zlXj8uQ5BuEDPXPn+++HFMX8J38MvaEvDgKn4eHxRMD9i3rcQ6EwMviQ?=
 =?us-ascii?Q?5dvi5nNO0eL6XQsGjgEYvzbPvuYoH7+VNoeCpVWm7afnq8NRvBcKr6HD/Ekg?=
 =?us-ascii?Q?NAS756jDCyiiERkAQcPy2KP6efOzJX0tyIcO6M5+99inutDVrGQbziYicjhz?=
 =?us-ascii?Q?wu+NCNbUeHJvhCvvR8PIoIr6+lMifwr2FHkDSz+NbEuzDF2ho6qSWkVAY3Az?=
 =?us-ascii?Q?H6gFWTh9j6piBaREWTxjE/Tjusr7WeVfDBua+PwxncK08OaPCBfIu1ZSw8LJ?=
 =?us-ascii?Q?38PJSu+NmBNDHfw7rwpIEWbj2Gf8AkOC4ROb3Gp5GqVSS/phfK0iFu6eezhy?=
 =?us-ascii?Q?z33fIsyPG2lvzm5T9jOozvSIDzy14/eujIZ1hBWzkrTOHsaUDkax2LegT1/E?=
 =?us-ascii?Q?5rY2AjyE3XSkhnj54pGDwd3+pkGDq8jsY/uehvOUVCZSUBtBp5Akhgr9lRlP?=
 =?us-ascii?Q?3XW/LO+g8PcvTZNdLE96gYgJcNkhhWlPIA3/n6A3robitaHBeOUN2Gwp4LIj?=
 =?us-ascii?Q?+5AYJuwaOsZR4PNC+mz2D808li6S05dboFqJ/ntKFmvnXp2P0NXvxYmestoi?=
 =?us-ascii?Q?RjiTzu8UrpxzevGG+aD5D9tjwdp3ySJpq4QR2tpg1KxzdZ6lSfrGtc0CGo2J?=
 =?us-ascii?Q?QBm2H3iPzKC2DrAsuNzv3VPthtMJbH74bcmwPU2nfgEyvKI5Y8yHTnH3KQYH?=
 =?us-ascii?Q?1Bgr7Bjm7Q6/jiS3TbuZfBzUvs9m9AHyLIijGceH22QI1mL3hOW6oQM8asHP?=
 =?us-ascii?Q?p59whMkLpk9euYQQ1grPTSWK0+iCVuuhj78QtiyhDHIb4T2AKsa22z+xyoM+?=
 =?us-ascii?Q?LW4r8YzWC+ZdpbyozKoEnls9LYLHP2h68V7BkwKc8eY2N3R3HFJpc+ri1Y5n?=
 =?us-ascii?Q?aITgqSJVim2faEir5SL0rdyrzKuXRY+hy1rIJ5kP0Igx5O9oIkjrQG23zcza?=
 =?us-ascii?Q?vkmTlRT3amtP++onuGQ1hXogTdxGknctisBymXPnNgnRhEDUkJyywotonqVK?=
 =?us-ascii?Q?ZM6xTFZ4HfqNhD2tZpTmpQkUch4mGQBgSUowv5ZcWKwLEvDO7esFAL7OiEIY?=
 =?us-ascii?Q?SfcKBEHbDWUCbncvLWyONLuWfWPsqo6dgdFJa0SHhy/APTn97cd6m75XpLcP?=
 =?us-ascii?Q?cXtZrMqQ5cE+XN6KodBkUKx4IxRUu4bJZLLCsw4Woi1wKrRvdJ4hsGhbBuw1?=
 =?us-ascii?Q?i3Cm4GrTmP1Zy0HB9gPfbmclFXg8W2dT3bRKVMdoqrFSDlJ4bDeZZmhGGXeJ?=
 =?us-ascii?Q?AKcefWyNjg/bS64JJULBErDxUo6OGi0okqCRoCJ6VElBeN0imIm5tCHswOnn?=
 =?us-ascii?Q?P2kPlYEfrA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ba5804ff-d1d4-4f2b-807f-08de5258d1c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 04:04:16.2794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tt0kzQ00DRuYXpO8eEgvZL7YBmJFbV60EIkJ3y8ZmPK6bgvSO5ZQ8xkoZrEDDOfw9yrERGgMSP+Yh25fhYkl9poS18XynvQpuflQv3sToSA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB7953
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7waMic+F8/JBX9pFWk22I1Ik0pl2fIBggjDYOsifSLc=;
 b=qJpGsmFJr2GlHrMpk98+E0VkwLJuoxcC1IxD1U+hLcbQBRHvKwN0MXPC4g7soSUi9P6pkMIYute7tahrUwWdu9DRhMdMxaR2Orx371bIuVr0EHeSA7+H+eeMq8kbPD4htlQFyx3oGjvpDEkBSvX/P78XVPdJbvjcmqE4CKE98tMj8q+Qr/UOwC49l0ebQE9m9jNv4FSHAE71AHskxNh2csKmcPB++rMa+tv2eQVj8PL5b4lw5JWPFvsj+WoaWjd3yIJcNw1+bbb1Tvq3e3LFUCl30QNuCVtWorrtqSEJQEvPmlDEbCW2DuO8SGMV18HUXQB3pe/QtFxUUNHsXI3ohQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=qJpGsmFJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
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



> -----Original Message-----
> From: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> Sent: Monday, January 12, 2026 2:04 PM
> To: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> maciej.fijalkowski@intel.com; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC PRC1)
> <vivek.behera@siemens.com>
> Subject: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in igb_xsk_=
wakeup
>
> The current implementation in the igb_xsk_wakeup expects the Rx and Tx qu=
eues
> to share the same irq. This would lead to triggering of incorrect irq in =
split irq
> configuration.
> This patch addresses this issue which could impact environments with 2 ac=
tive
> cpu cores or when the number of queues is reduced to 2 or less
>
> cat /proc/interrupts | grep eno2
>  167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  0-edge      eno2
>  168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  1-edge      eno2-rx-0
>  169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  2-edge      eno2-rx-1
>  170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  3-edge      eno2-tx-0
>  171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.=
0
>  4-edge      eno2-tx-1
>
> Furthermore it uses the flags input argument to trigger either rx, tx or =
both rx and
> tx irqs as specified in the ndo_xsk_wakeup api documentation
>
> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1:
> https://lore.kernel.o/
> rg%2Fintel-wired-lan%2F20251212131454.124116-1-
> vivek.behera%40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens
> .com%7C195e9677fcd9464e392c08de51db0d32%7C38ae3bcd95794fd4addab42e1
> 495d55a%7C1%7C0%7C639038198405683495%7CUnknown%7CTWFpbGZsb3d8
> eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DrSn9N%2B9xaRiZoE5
> mjETCe2iG%2Buu4CfCnjwsJ8lIgLSg%3D&reserved=3D0
> v2:
> https://lore.kernel.o/
> rg%2Fintel-wired-lan%2F20251215115416.410619-1-
> vivek.behera%40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens
> .com%7C195e9677fcd9464e392c08de51db0d32%7C38ae3bcd95794fd4addab42e1
> 495d55a%7C1%7C0%7C639038198405727630%7CUnknown%7CTWFpbGZsb3d8
> eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DuC83YhZDYrzPPMfbbk
> b06AEgsP%2Bqqre4Ht5TIZT46vI%3D&reserved=3D0
> v3:
> https://lore.kernel.o/
> rg%2Fintel-wired-lan%2F20251220114936.140473-1-
> vivek.behera%40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens
> .com%7C195e9677fcd9464e392c08de51db0d32%7C38ae3bcd95794fd4addab42e1
> 495d55a%7C1%7C0%7C639038198405760767%7CUnknown%7CTWFpbGZsb3d8
> eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DZYaDd3oMihS3FXabs
> NAMHTh0cVHxErFXsZ7V%2BK74TzY%3D&reserved=3D0
> v4:
> https://lore.kernel.o/
> rg%2Fintel-wired-lan%2F20251222115747.230521-1-
> vivek.behera%40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens
> .com%7C195e9677fcd9464e392c08de51db0d32%7C38ae3bcd95794fd4addab42e1
> 495d55a%7C1%7C0%7C639038198405783856%7CUnknown%7CTWFpbGZsb3d8
> eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DHYb8WkqgdiGLkXASa
> pmMQKvnFXAFwYFEErxQHAkSPXI%3D&reserved=3D0
>
> changelog:
> v1
> - Inital description of the Bug and fixes made in the patch
>
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configur=
ation
> - Review suggestions by Aleksander: Modified sequence to complete all
>   error checks for rx and tx before updating napi states and triggering i=
rqs
> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use =
case)
> - Added define for Tx interrupt trigger bit mask for E1000_ICS
>
> v2 -> v3
> - Included applicable feedback and suggestions from igc patch
> - Fixed logic in updating eics value when  both TX and RX need wakeup
>
> v3 -> v4
> - Added comments to explain trigerring of both TX and RX with active queu=
e pairs
> - Fixed check of xsk pools in if statement
>
> v4 -> v5
> - Introduced a simplified logic for sequential check for RX and TX
> ---
>  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
>  drivers/net/ethernet/intel/igb/igb_xsk.c      | 75 +++++++++++++++----
>  2 files changed, 61 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> b/drivers/net/ethernet/intel/igb/e1000_defines.h
> index fa028928482f..9357564a2d58 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> @@ -443,6 +443,7 @@
>  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change */
>  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. threshol=
d
> */
>  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserted =
*/
> +#define E1000_ICS_TXDW      E1000_ICR_TXDW   /* Transmit desc written
> back */
>
>  /* Extended Interrupt Cause Set */
>  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/i=
gb/igb_xsk.c
> index 30ce5fbb5b77..6e51b5b6f131 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid,
> u32 flags)
>       struct igb_adapter *adapter =3D netdev_priv(dev);
>       struct e1000_hw *hw =3D &adapter->hw;
>       struct igb_ring *ring;
> +     struct igb_q_vector *q_vector;
> +     struct napi_struct *rx_napi;
> +     struct napi_struct *tx_napi;
> +     bool trigger_irq_tx =3D false;
> +     bool trigger_irq_rx =3D false;
> +     u32 eics_tx =3D 0;
> +     u32 eics_rx =3D 0;
>       u32 eics =3D 0;
>
>       if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27 +543,65 @@
> int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>
>       if (!igb_xdp_is_enabled(adapter))
>               return -EINVAL;
> -
> -     if (qid >=3D adapter->num_tx_queues)
> +     /* Check if queue_id is valid. Tx and Rx queue numbers are always s=
ame
> */
> +     if (qid >=3D adapter->num_rx_queues)
>               return -EINVAL;
> -
> -     ring =3D adapter->tx_ring[qid];
> -
> -     if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> -             return -ENETDOWN;
> -
> -     if (!READ_ONCE(ring->xsk_pool))
> +     /* Check if flags are valid */
> +     if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
>               return -EINVAL;
> -
> -     if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> -             /* Cause software interrupt */
> +     if (flags & XDP_WAKEUP_RX) {
> +             /* IRQ trigger preparation for Rx */
> +             ring =3D adapter->rx_ring[qid];
> +             if (!READ_ONCE(ring->xsk_pool))
> +                     return -ENXIO;
> +             q_vector =3D ring->q_vector;
> +             rx_napi =3D &q_vector->napi;
> +             /* Extend the BIT mask for eics */
> +             eics_rx =3D ring->q_vector->eims_value;
> +             trigger_irq_rx =3D true;
> +     }
> +     if (flags & XDP_WAKEUP_TX) {
> +             if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
I just realized this has to be changed to   if ((adapter->flags & IGB_FLAG_=
QUEUE_PAIRS) && (flags & XDP_WAKEUP_RX))
Otherwise it will never execute the part needed for TX. I will fix this in =
the next version
> +             /* In queue-pair mode, rx_ring and tx_ring share the same
> q_vector,
> +              * so a single IRQ trigger will wake both RX and TX process=
ing
> +              */
> +             } else {
> +                     /* IRQ trigger preparation for Tx */
> +                     ring =3D adapter->tx_ring[qid];
> +                     if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> >flags))
> +                             return -ENETDOWN;
> +
> +                     if (!READ_ONCE(ring->xsk_pool))
> +                             return -ENXIO;
> +                     q_vector =3D ring->q_vector;
> +                     tx_napi =3D &q_vector->napi;
> +                     /* Extend the BIT mask for eics */
> +                     eics_tx =3D ring->q_vector->eims_value;
> +                     trigger_irq_tx =3D true;
> +             }
> +     }
> +     /* All error checks are finished. Check and update napi states for =
rx and tx
> */
> +     if (trigger_irq_rx) {
> +             if (!napi_if_scheduled_mark_missed(rx_napi))
> +                     eics |=3D eics_rx;
> +     }
> +     if (trigger_irq_tx) {
> +             if (!napi_if_scheduled_mark_missed(tx_napi))
> +                     eics |=3D eics_tx;
> +     }
> +     /* Now we trigger the required irqs for Rx and Tx */
> +     if ((trigger_irq_rx) || (trigger_irq_tx)) {
>               if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> -                     eics |=3D ring->q_vector->eims_value;
>                       wr32(E1000_EICS, eics);
>               } else {
> -                     wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +                     if ((trigger_irq_rx) && (trigger_irq_tx))
> +                             wr32(E1000_ICS,
> +                                  E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> +                     else if (trigger_irq_rx)
> +                             wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +                     else
> +                             wr32(E1000_ICS, E1000_ICS_TXDW);
>               }
>       }
> -
>       return 0;
>  }
> --
> 2.34.1

