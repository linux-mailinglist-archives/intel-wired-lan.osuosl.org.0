Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DD69638C8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 05:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1947B60ABA;
	Thu, 29 Aug 2024 03:27:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5wUKL-uMdsEk; Thu, 29 Aug 2024 03:27:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D89E60D78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724902040;
	bh=RoBV8O88QxeyR1sJw22L1xBlCPneweY8zhR7NhH6vTE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IWKnTk7RlcXjmLzvYPrbGNhcSJqPyB0TWJBl1G+qHRaCC2VL6YFc8bX9E/flfYSOK
	 MbfxSypFsj0dmWdo9+vXN3KbIdD13M0BeF+1ekU0KT7F43S63vSf2ZFWg8MnEMA6+E
	 0hJf2Ou1fzYpgD+r37DK8yaRzeNdcQW8h7AWxbj1HR+PmOl93YuNpDcoLAFEEkxSOd
	 2EUZsYCH+6AWyL77mXHNLul/VB4Kq8G4pRKz/knncYFpsjTgvri9nUBk+uW0rATahA
	 CIhWTr83h+/NTASlJoK5kjl5qLIN6ONOUzwFKMstMssyF+dgEqAChlzJFM3ukwBWSx
	 p0P7h79CBrleg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D89E60D78;
	Thu, 29 Aug 2024 03:27:20 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8660B1BF282
 for <intel-wired-lan@osuosl.org>; Thu, 29 Aug 2024 03:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F84F818CD
 for <intel-wired-lan@osuosl.org>; Thu, 29 Aug 2024 03:27:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zIChvlAwhd4f for <intel-wired-lan@osuosl.org>;
 Thu, 29 Aug 2024 03:27:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.212.90;
 helo=nam02-bn1-obe.outbound.protection.outlook.com;
 envelope-from=faicker.mo@zenlayer.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2B0C8818B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B0C8818B5
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam02on2090.outbound.protection.outlook.com [40.107.212.90])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B0C8818B5
 for <intel-wired-lan@osuosl.org>; Thu, 29 Aug 2024 03:27:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CMfJLCPFe1XECGFcNBfkyR9t2E1Fq6fu5+/SK7LSjlpRhsvecFg4wAfIguoFC+dnXvrvftfSXvcSLoxgFZ2gWXUWzOGLj+st5V1nbiB2oRCCtGduEccDDHz4sQPpPQfT1lpMH/bKPmZPFZ8s0DMv1yiAP1deTEybvn450C1/2ux+bkFhcW2i7AYdPGUFXezFojwVK14TBqKKYu2zAnBwUJx7vyzcrSue1Ebi9HjWnjGWqgEONkgJ6QJgDiQwxwGTyMlCVzzKtpf//nzapj3EqpPFv9KzQZubELwpcP5JGATZFfXcUXRIfQhRMxJzRAvL3w7su4SpxVFZof99PR94hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RoBV8O88QxeyR1sJw22L1xBlCPneweY8zhR7NhH6vTE=;
 b=NXXJEbgjfMnsoixxYq4mg0Y22XZ1K4nrgULhj2tLiuFH801Yt2CLIKajTNAWlzfcSpvzqVAFOaLt9XClenWSeRKnHh7+FIs5faYkS6y6MAcYJIVRMGf0s4UAl/BwuIy5Q+4Pi7iwIhljBcRmazVtISTZ1QcPqIQ/C2UhjKgiywQ5dfZy1Rem6ne3/MbJ/4hHigQhWEExMvYRURgAxPv1aL1qzCBXlBgjBQEWZTd5VA0MxIPAAfGSINNtalGtypMM+n1oebv//vPqdpnfsCr8Xucqkf6Sdm3N+AuMbP3yShiL3mxkbTXZ8PdLBFnl8Tz4hBwMEv05xvgYHULZxYH3YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zenlayer.com; dmarc=pass action=none header.from=zenlayer.com;
 dkim=pass header.d=zenlayer.com; arc=none
Received: from SJ0PR20MB6079.namprd20.prod.outlook.com (2603:10b6:a03:4d7::19)
 by CYYPR20MB6686.namprd20.prod.outlook.com (2603:10b6:930:ca::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Thu, 29 Aug
 2024 03:27:14 +0000
Received: from SJ0PR20MB6079.namprd20.prod.outlook.com
 ([fe80::c11:df86:9358:e76]) by SJ0PR20MB6079.namprd20.prod.outlook.com
 ([fe80::c11:df86:9358:e76%4]) with mapi id 15.20.7875.018; Thu, 29 Aug 2024
 03:27:13 +0000
From: Faicker Mo <faicker.mo@zenlayer.com>
To: "Glaza, Jan" <jan.glaza@intel.com>
Thread-Topic: [EXTERNAL] Re: [Intel-wired-lan] [bug report]iavf: deadlock on
 detach/attach vf to VM with net_failover
Thread-Index: AQHa92PLTpgL6l7lbkabERG8MCc2g7I8kaeAgAEDprE=
Date: Thu, 29 Aug 2024 03:27:13 +0000
Message-ID: <SJ0PR20MB60797AE7B7293BB912545B37FA962@SJ0PR20MB6079.namprd20.prod.outlook.com>
References: <SJ0PR20MB6079EE704620E28B3AD45286FA8B2@SJ0PR20MB6079.namprd20.prod.outlook.com>
 <5dfb65a7-8625-4149-9d8a-b6bcda530882@intel.com>
In-Reply-To: <5dfb65a7-8625-4149-9d8a-b6bcda530882@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR20MB6079:EE_|CYYPR20MB6686:EE_
x-ms-office365-filtering-correlation-id: e76bbfff-c730-4f83-53a2-08dcc7da79a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?WH1ssJNp/xQWS6dKvEozBJiRKgYAtEOwpaX9pb1ml34zFDbhud2+p4TCsO8K?=
 =?us-ascii?Q?BTgHn+kdZovH+bGE3b85N5SNUBeojGKkfj9r7/mUA2bdv/VCfcx9zFRNrDIF?=
 =?us-ascii?Q?+DJ2prxVUcBMX8VVZ/x2IneqVKlR/CW33yCnWtYKXpMsIJ0obcSPDQoXUhvS?=
 =?us-ascii?Q?ob78ejao8EN/alxlf18qHaFERYpsiVCOBDG6W+pg7kmLvubkYpJxr51RS0Q9?=
 =?us-ascii?Q?WLJTaEsoReWop+0h/D3YKNd/8u32vdV/U1veSW7pz5nNTunTeksU2bopiAZE?=
 =?us-ascii?Q?M7wzM56k3elxubkrC4DbxtHl5EQ5nkA1xfsWR0NQP+Hxp6VJ36z1Rwtd/TEE?=
 =?us-ascii?Q?ay+VaT8NtlU9K/e8EjxFNhucsLMWCcwKJeoFJqG0Bg84Ckv3PeGzS/Z97xSI?=
 =?us-ascii?Q?fY/7GkbikAez8GUSdKCD4D5x/KV1m/QIe86yPHM76VQ+C8tCFAhc/7Ec1AGE?=
 =?us-ascii?Q?kl+MAlYSchP2Khhx6DhIQQC5b3zqt6m9k3W41YA2nPcQpIXZwIF2ZY8IlASz?=
 =?us-ascii?Q?eJk+vTba4EBAmabuBgDGF2Plvxz675L3CykaLxy3bVvrduIT9W+vlhAxWqjr?=
 =?us-ascii?Q?bghEQKhcHjVHU2UlrODFn/+UuZ8BA5VRTHDoUHnXcRpNPA65jrBlY7rdR7hq?=
 =?us-ascii?Q?EtJGOrP1e9+qF0G9etD6wCGRVY3TALgREFGwiEL3Cdcd732RBGXvuqHkwvNm?=
 =?us-ascii?Q?tqbqIcYW1z9y7EtOr+zfB/vhpPPzAlOYiLYPkzyb7zzRL15c3kVVdlTxUJx1?=
 =?us-ascii?Q?MrAbWlA91B43n99fiuwP13BuSahadSJ30IbHs4Z9Bxu3PzGF3bID53RBl2pe?=
 =?us-ascii?Q?OhgJTS81prlHsj+jOWV4xCWHYdEGNbqtakRLWkl16r1+P4GhUfGhBEefgECh?=
 =?us-ascii?Q?MfS6J0dH7b+gO6OIhAwHGB+HlRSHFc9nDfugTO6+paUGgF2djgxCXvT2jBHw?=
 =?us-ascii?Q?V6TcM11gwD7nWqyw/pGJlYWODe4oJ5TFJn3hz0TiFJ4beh3QvOrOeaL453Ve?=
 =?us-ascii?Q?0KUKf+1K7U70mT6IARoqS4TZmICkk16TTC0qimKvGD+k1+ENr+imO5FlXosj?=
 =?us-ascii?Q?jEgzNsZU+x4lzLZ4whcpI2c6k1D1A2kHzaq8VWIgBuKkO7VlioHB3ZZurw7Q?=
 =?us-ascii?Q?vxFkpxi7xv9+yBUn/c5RUxHxgvAACz/3CIjOZKPd5n7s4+a/wKJ3NBcSu1jd?=
 =?us-ascii?Q?SWyI9wQqrhra/A/osAQiODELb87WL/xU9SlRXgieTYPMfKs0+vQCiQhgNEMV?=
 =?us-ascii?Q?1yRxcIQs2cBTmdLll+CW/bccG7+WalnSN4p9P3Xyu5bCmx/TkqT6C0LkFqx2?=
 =?us-ascii?Q?rV8WbrMuOkL8wt/QJPGht3Uyo+wEOxPz6yGP4dQi+VHaAD3vkkaw1sAp4YXQ?=
 =?us-ascii?Q?FjEu1bw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR20MB6079.namprd20.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qK9PIFQkUXyqq1INowdQkJs5/rpfmD872/N0dtMWPpP2z3BckoWlWholRfhl?=
 =?us-ascii?Q?QA+/K1Zb2cBxCoEQKK9SVEA8Ii8kby5PzicdWGkl0GI/FN+mUxg4/frJZ0BK?=
 =?us-ascii?Q?1wp2xuss+MqIOvTLqd1KAIW+Ct5ZKnJbeUyrPp9P3WxY0x+SSW0uIeQNpNn8?=
 =?us-ascii?Q?dGQZnKcRjCh1k2WgW057D7TpeV7YTpSckCPLoSNQSTMOMXVFeSMk775rSv9z?=
 =?us-ascii?Q?MdPdR+nRKklDGIsv/bxcECwB6S3JKMQG6cvCWUFrx/s7B7OU6khg7B+tOD4h?=
 =?us-ascii?Q?YVd6BavGaJvR9HPQeSc4veQLRaqkioP1AewtaRwbSy1F6rsFloAgBFVc+N1C?=
 =?us-ascii?Q?3RkeM+g39mcIDN5XaUA30Wok9qLrJ5NPKGffNruPG7WuxG6OkBlbluTS+qvw?=
 =?us-ascii?Q?KzmwdcfdfhotRGjjxXL7r8FH9fF6qNQCzpA7GmbgZEPTo4fPSxJARq1yRP9z?=
 =?us-ascii?Q?VuwRLY3b5ZdkEn91T0VQOQdikyWaHTGdBHNviFNG54KSjzEE/o1zWsH6CJjc?=
 =?us-ascii?Q?UgPJ/OUe3wVnY4qtTEpoBPzezLxXEyBbiQ5VFTu5FAEPanc1hU01g2I2VuD3?=
 =?us-ascii?Q?ItY7iHJ3lF/EsaEtwonzpDZbIZInkRIBdzlBXc+MLR3ZdJN4VTkvqknU7pIN?=
 =?us-ascii?Q?Q6i2KxEUwd26tgxz+uD2TSTb23rXA9kEIG9NCFoH0gLssk2CwX9MAewENd9V?=
 =?us-ascii?Q?aiWXcG4ZRQLXSMsihMng01oVIZ2PNyYQ/SfYGzwJrtQNYZBGc2Xjza8HaVgs?=
 =?us-ascii?Q?+wRo1ieIrqj+4mNDzdR21LB3I6DAHCHX1/qORKuVhtuuTJ2394isks8m8uGh?=
 =?us-ascii?Q?nku56wHmMAgzhSVXXcRgAW7kAMB42KMuJ02Ws9NIam+wKURgYMRvfDJWgDpe?=
 =?us-ascii?Q?Tm0k58rR/nP9ylYkx4iEF9QvB6Nn/f4If80t6etxORIXs6zai8IuxkGpc+Fo?=
 =?us-ascii?Q?vp1WiktAIxXdxDfucolxGVlDg0oxVDkUF7k9AeCUoCEU1VQkdJv9o6e7Akiu?=
 =?us-ascii?Q?WASAHxmg14d9+dBSEInION5csOZoADyBK/NbDx1EGGFfO0iIo6O39SvyvhlG?=
 =?us-ascii?Q?/RZxqueLEoHrp2Z3y+yrAHoHzjP5uRv/gvw72tp7f3FgwhzjPwSVIZVora5T?=
 =?us-ascii?Q?yzePvNSzsXZmuA3tHkLO76+wvqgpSEaFpyfg2xmRMOjC7wB9/K3U3cQxjdBQ?=
 =?us-ascii?Q?nGSbRPbX9WQxZHu14Lnfa2AqsOcEH4GconI/7/dWpJ+GsPaJpipmD0FR3fN0?=
 =?us-ascii?Q?LpRa5Iy/43w5nLd84bjomPY2O2gYQYwJEhjSvQTXzdWVd+IwhmKPtvk+SJzY?=
 =?us-ascii?Q?j6ICNFdXlcByISdYPFLw4aUai2OzG8zE1Snz9A3Xnw8zC0GhBJ59pwTWHKzM?=
 =?us-ascii?Q?1m3EnhTmNAOzrIVTPRGPQOhMo/HgcUVmGEQw5okgEM2/jSogUoocG7xVp8nY?=
 =?us-ascii?Q?HwoMq6Q981imtCIdUwIBfaIHu8lP3rgBLM1jTSapO240+nWsv4IRWD0N0LxJ?=
 =?us-ascii?Q?Zk6ESZABzj2qqvIInjjsJFZQMVZSMWxs8dkOKFabQr2dv5nVev3SjjW7jHjt?=
 =?us-ascii?Q?NId1k2AZShNC3QNbT/wmc4V3wxTUGj6BiteuICS7hfKcYD4rhqtvQ3ysXZjE?=
 =?us-ascii?Q?wg=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SJ0PR20MB60797AE7B7293BB912545B37FA962SJ0PR20MB6079namp_"
MIME-Version: 1.0
X-OriginatorOrg: zenlayer.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR20MB6079.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e76bbfff-c730-4f83-53a2-08dcc7da79a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2024 03:27:13.7069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0d27725c-b11d-49f0-b479-a26ae758f26d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zdqE3iRorfWBvHaXg144rMODHyR8ctN7Ud1AGriqhf1Qjrq4/h6vwFoVhpvAWvZqwm3OSpqpwRuGMvmrg1xcdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR20MB6686
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zenlayer.onmicrosoft.com; s=selector2-zenlayer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RoBV8O88QxeyR1sJw22L1xBlCPneweY8zhR7NhH6vTE=;
 b=B8FdY0MOLi5c49rjTNUgq23K1hJIcNIKqNMKWvpv6l9W6UcQeshKLOYimiFcDafaBcKYRiIBQbgtrcOGSWA1it6oIGH6mxmgB1IjrAoyTz4CpD8egMyhWHHCbdu/+NR18pScKFNQJRV5OWRdp/zKq1W0s9/wdenMpu5n+M5Onww=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=zenlayer.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zenlayer.onmicrosoft.com
 header.i=@zenlayer.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-zenlayer-onmicrosoft-com header.b=B8FdY0MO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=zenlayer.com;
Subject: Re: [Intel-wired-lan] [EXTERNAL] Re: [bug report]iavf: deadlock on
 detach/attach vf to VM with net_failover
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_000_SJ0PR20MB60797AE7B7293BB912545B37FA962SJ0PR20MB6079namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>Hello, we are attempting local reproduction and will work to analyze and
>fix the issue. If you are able to, could you please provide us with the
>reproduction commands or script to facilitate easier investigation and
>rootcausing?

1.Enable SRIOV/iommu on the host.
2.Install the libvirt and qemu on the host.
3.Create VFs on host.
4.Download a ubuntu22.04 cloud image(maybe need change password with virt-c=
ustomize) and Define a xml and start the VM,
the net_failover interface part on this link, https://docs.kernel.org/netwo=
rking/net_failover.html
The mainline kernel download from this link, https://kernel.ubuntu.com/main=
line/?C=3DN;O=3DD
5.A New xml file vf.xml with this content,
<interface type=3D'hostdev' managed=3D'yes'>
  <mac address=3D'52:54:00:00:12:53'/>
  <source>
    <address type=3D'pci' domain=3D'0x0000' bus=3D'0x42' slot=3D'0x02' func=
tion=3D'0x5'/>
  </source>
  <teaming type=3D'transient' persistent=3D'ua-backup0'/>
</interface>
6.Execute virsh console vm0 to login to the VM on a new terminal
Detach the VF and attach the VF
virsh detach-device vm0 a.xml
virsh attach-device vm0 a.xml
7.In the VM, the kworker hangs.
Get the process id, ps -ef | grep 'kworker.*iavf'
Get the stack, cat /proc/275/stack

--_000_SJ0PR20MB60797AE7B7293BB912545B37FA962SJ0PR20MB6079namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Aptos;
	panose-1:2 11 0 4 2 2 2 2 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"en-CN" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<div id=3D"mail-editor-reference-message-container">
<p class=3D"MsoNormal">&gt;Hello, we are attempting local reproduction and =
will work to analyze and<br>
&gt;fix the issue. If you are able to, could you please provide us with the=
<br>
&gt;reproduction commands or script to facilitate easier investigation and<=
br>
&gt;rootcausing?<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">1.Enable SRIOV/iomm=
u on the host.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">2.Install the libvi=
rt and qemu on the host.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">3.Create VFs on hos=
t.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">4.Download a ubuntu=
22.04 cloud image(maybe need change password with virt-customize) and Defin=
e a xml and start the VM,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">the net_failover in=
terface part on this link,
<a href=3D"https://docs.kernel.org/networking/net_failover.html">https://do=
cs.kernel.org/networking/net_failover.html</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">The mainline kernel=
 download from this link,
<a href=3D"https://kernel.ubuntu.com/mainline/?C=3DN;O=3DD">https://kernel.=
ubuntu.com/mainline/?C=3DN;O=3DD</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">5.A New xml file vf=
.xml with this content,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&lt;interface type=
=3D'hostdev' managed=3D'yes'&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;mac addr=
ess=3D'52:54:00:00:12:53'/&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;source&g=
t;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp;&nbsp;&nbsp; =
&lt;address type=3D'pci' domain=3D'0x0000' bus=3D'0x42' slot=3D'0x02' funct=
ion=3D'0x5'/&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;/source&=
gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;teaming =
type=3D'transient' persistent=3D'ua-backup0'/&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&lt;/interface&gt;<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">6.Execute virsh con=
sole vm0 to login to the VM on a new terminal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">Detach the VF and a=
ttach the VF<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">virsh detach-device=
 vm0 a.xml<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">virsh attach-device=
 vm0 a.xml<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">7.In the VM, the kw=
orker hangs.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">Get the process id,=
 ps -ef | grep 'kworker.*iavf'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">Get the stack, cat =
/proc/275/stack<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_SJ0PR20MB60797AE7B7293BB912545B37FA962SJ0PR20MB6079namp_--
