Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AB997B71B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 05:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6C696072F;
	Wed, 18 Sep 2024 03:43:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 72n8jeNCAA_E; Wed, 18 Sep 2024 03:43:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DFDA60E18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726631024;
	bh=rQVgSAt4WcI+mX3R65NFB5+/qWrC6XJ/kuj011rbYkA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d1WiGHtgtuiB+8oC1Jjl/ENeNCFxaIzQCnc2++NN7efB35khaMwXTBCogTDuR6ap9
	 Z0C9zHH9cAPpbKuUSDnJM4cmfBO/ZveG4NDZCwuFzcqnB7hqbR1cpr6zCPtETMg8PB
	 6ANeNp4JTg7uYUXNvYQy9EykggSmkjHo+PCpflHOpBX/Ry3LQ6Vfpu7TtwAs+KFZmO
	 n6E0l6e/jvJpJOezywsQ7PaJNv0fZTI5mae8NEO3svZOKT+iByoYwWIPsLtc5t3hdz
	 ROdQhgkbpAhevrSMCaDQhQR/PAseUZYdFlBqrcf7v+aWEKqGDeogdfzn2l6F9NFeFD
	 Y4Khx+mv7izKg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DFDA60E18;
	Wed, 18 Sep 2024 03:43:44 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 88B2A1BF215
 for <intel-wired-lan@osuosl.org>; Wed, 18 Sep 2024 03:43:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7652281EB0
 for <intel-wired-lan@osuosl.org>; Wed, 18 Sep 2024 03:43:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3CnCVA94HOFP for <intel-wired-lan@osuosl.org>;
 Wed, 18 Sep 2024 03:43:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.92.129;
 helo=nam10-bn7-obe.outbound.protection.outlook.com;
 envelope-from=faicker.mo@zenlayer.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 52C5481EAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52C5481EAD
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2129.outbound.protection.outlook.com [40.107.92.129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52C5481EAD
 for <intel-wired-lan@osuosl.org>; Wed, 18 Sep 2024 03:43:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VNuKjfY83njNxTuEhq7Xrlp6l8SxbFv8+O2Oa5ezKP2bdREMIzdgG7QgfjQVxlR6y3wejTgeZaoDool3lRGJP3Ul3SNnXf66MhK5z9aTHUtblSopZsx7aCIsdh763hgnWKoOjyQ02v/M/sUHdaW3zyq5lnsmPTfJwtFVqqw1Kbq49JUb6lvCjwrJYFeOjZnGtHRCNecwQSFuAzQbgVi057LHwIhjtIQPjElcPKU9tan37UsM4mUSrNws2Hz1OwNai5QhQuoZUASkArX6qSGZCa0zLmyN0500FG1RPW7tw2gMz9uUKLNapKrtXINLM/8/lGNExX8TrIVNhOnYiVaLvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rQVgSAt4WcI+mX3R65NFB5+/qWrC6XJ/kuj011rbYkA=;
 b=rcK/B2Y+3VzJVNkZeS10i7C6EVXkHidgnsDzKhohCx5R/wXboG+9/6ZZwBBsATjhuaDIpYb5Q8MxR/30yiFB6N+yenQnLeNi3rFZGh1dwwWZnva6kemGUvkBDZ6ptqAfKY6EBLo1y3+1L8NQUuqTrxzyT3N0bri20VtNHZ+r/fPylWq6LZGca1psI8yEv14A41ZQW1OFaVOhS81kAlHyog4WgZyjHW23/XC7ya3SRYRD5gkTq6pFKsnh2ePmg87/SKFk/ha1VWwKseMN+Lja0NQqXv2CRRYxCa1W5n8kmgOOGC+Ub3h2dguJ2J9N/swRr54SeBbAoysp5qpDuGi7Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zenlayer.com; dmarc=pass action=none header.from=zenlayer.com;
 dkim=pass header.d=zenlayer.com; arc=none
Received: from SJ0PR20MB6079.namprd20.prod.outlook.com (2603:10b6:a03:4d7::19)
 by SA1PR20MB4297.namprd20.prod.outlook.com (2603:10b6:806:234::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.16; Wed, 18 Sep
 2024 03:43:37 +0000
Received: from SJ0PR20MB6079.namprd20.prod.outlook.com
 ([fe80::c11:df86:9358:e76]) by SJ0PR20MB6079.namprd20.prod.outlook.com
 ([fe80::c11:df86:9358:e76%4]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 03:43:35 +0000
From: Faicker Mo <faicker.mo@zenlayer.com>
To: "Glaza, Jan" <jan.glaza@intel.com>
Thread-Topic: [EXTERNAL] Re: [Intel-wired-lan] [EXTERNAL] Re: [bug
 report]iavf: deadlock on detach/attach vf to VM with net_failover
Thread-Index: AQHbBexRV7UeOwRX10mzASIXiA13T7Jc67xc
Date: Wed, 18 Sep 2024 03:43:35 +0000
Message-ID: <SJ0PR20MB6079F810B9623E6919B3DB6DFA622@SJ0PR20MB6079.namprd20.prod.outlook.com>
References: <SJ0PR20MB6079EE704620E28B3AD45286FA8B2@SJ0PR20MB6079.namprd20.prod.outlook.com>
 <5dfb65a7-8625-4149-9d8a-b6bcda530882@intel.com>
 <SJ0PR20MB60797AE7B7293BB912545B37FA962@SJ0PR20MB6079.namprd20.prod.outlook.com>
 <ef41438c-b311-4922-a6bb-3073f69bfa96@intel.com>
In-Reply-To: <ef41438c-b311-4922-a6bb-3073f69bfa96@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR20MB6079:EE_|SA1PR20MB4297:EE_
x-ms-office365-filtering-correlation-id: ebb68466-3b9f-467e-69c6-08dcd794131a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?Windows-1252?Q?1ObhpyqHrWgnViURjTnaJoRwqpxUwCZLvGEYU5h4izaMi5qmRK63S+bj?=
 =?Windows-1252?Q?EWcKiF9gDJv/IyUpGvAAdiXkKIApVyWOq83JkYhqofFEZUEBnghrZTlq?=
 =?Windows-1252?Q?2Jw43kBzIVNIqo3w5Z9DsG4oxkVKAVsC+I/896mYn9XIEopRRJGsLLV6?=
 =?Windows-1252?Q?nOBET3uCSRttEtXci36KRcGb9IS7WHDm7gLlGjXvExPf7V8A0v9MJyRo?=
 =?Windows-1252?Q?yYUBoLd+zBVU+q7K/5Y0C9OuZG1bi6uj0YXKwX1PACmXaYJjZQ+kcJfm?=
 =?Windows-1252?Q?P6hlYVsVwRpH+ZrCsJy6IItOYhH9VEGjcjctKHj4ABRQSlTy0MRMslBb?=
 =?Windows-1252?Q?0lG0uYbouT9AHKI5GJx0YtzTiIFKvVIBO4F2nMLMPNPNsjQGE334WVX8?=
 =?Windows-1252?Q?jLxb8S5r+cZLM099QqQpNYE3/Kf2Pu1ykDSg5IHyg5bxzngVaIhoO7l1?=
 =?Windows-1252?Q?M7DooKfxny91g3u/lUSL8rYl0KLUq3wmMsUV2xNoFXry4wqLQTASh86O?=
 =?Windows-1252?Q?K/fvmIWmzZxK7ogZJBB4c1PwBCSbTYs27qUCli+RWCxxssNDc8iD5fWs?=
 =?Windows-1252?Q?oH+rJudHG30CFI4Jpe02REr4KFYBdpucTvZkpbIxDWK+rXWBS+Bqbn44?=
 =?Windows-1252?Q?HTxZKWeiVp8X3vN7WbINcIdEhg8mFzmXI9i75nNbo47Uk9Z1F2FgEhB1?=
 =?Windows-1252?Q?x2MEaSms7FNDusKeCMIWVCnmICRqcmpxCbdZU4OSpGSYX/FS1PAOjq+C?=
 =?Windows-1252?Q?Dd5lmurQ41OIHEHbWVW8lIghsdVzQDpxnDKN5++1nkzYeSCLZb+i0d5c?=
 =?Windows-1252?Q?YfSKRh5sw41HqNsxzg0KoYkt6j/VUnAcVWA/xherNGmXSdoXTlNWDlTc?=
 =?Windows-1252?Q?l6KzqpgpaQG23Apmg4wosIxxhpOtw8heS3rOZJI7WiU/s08aNUgEHrpE?=
 =?Windows-1252?Q?xitvO7vu+k2JQHOr9nIfSnk6kCI98+Pm+cTJuLFpWUmBI8O8xk9ZjIOV?=
 =?Windows-1252?Q?ShtM9c5x1QygBSwMCoUi13SOykQHzOQY3JWuPuIErXNhnXZ339Cve7QU?=
 =?Windows-1252?Q?/pUTw6cXu6UByssyc/Q9KeglgbRiJ6dpNxqHJhZLxpYXz94qJkW4k+iB?=
 =?Windows-1252?Q?0udugT5Kq7Vk+TdOO4V5E2mIY52NFcdjRi24noW9EGJhb7Fm0jXitF51?=
 =?Windows-1252?Q?9l3yFlJ3OFs9UEj0xCQM3giqpre2moOJmn0q3joGskkC3owKFp4c5dXn?=
 =?Windows-1252?Q?SQMcUB6vK0Eg4ku3HNT/c3ojiIkH4+Wz/1pTOSP5TRmAWZtfBgcJ8AV7?=
 =?Windows-1252?Q?meYwuHc0eaXjR4WIa1smXdvw59kIdAZ5hYe4+IMReHjiAGov1r4d5xrI?=
 =?Windows-1252?Q?0GdGkBlBdTwJ1/J3fMgZ/3qUgXqkDrvIYjyQuyQ2lg6ri6Fb8jdgG2Pq?=
 =?Windows-1252?Q?imPgKfhTpN3ht9d7CYfQYCPAvNvWahW1cUYh2Mw/m8ckgR5WE0eS5hHI?=
 =?Windows-1252?Q?ffkpZaFOvMr2oMhdxMVw0y1sAS4w9Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR20MB6079.namprd20.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?F0BQe/1Hx1qZwjTSYYtckK7aPkRcrjcUX8a2MdKIC5aLFeVw0sYUjWgI?=
 =?Windows-1252?Q?9xQK5+mHpqL7lWXImJi7XWKZIat13hIFWZuW5zu24gXYz2+Z6cSlxFik?=
 =?Windows-1252?Q?7p2mndjgogZywDuOfRa5VSwjwwcjYTrGeWMQyhvNivdtmqWA21T03uS7?=
 =?Windows-1252?Q?aRqI4n6hZu+pDnDuIKuLV9WPj5PDuan9C/agnw6kxy+/UVtxaX7Fi4+I?=
 =?Windows-1252?Q?zmuS+yJvD3M5WIqeGRqAwEuCllo0feDcJEg1nQGDvs1VCTHA6CCF0wJv?=
 =?Windows-1252?Q?aFxY6ZDogI9AVUnDjIVRlgQaFAqWMtcBhfkgtPf9rpFZk6E0YI95kHcb?=
 =?Windows-1252?Q?Vsnx1kT5oFzJcZ5e9xbB1wENqrwO+wmh0JpaWsKGPy8e8yRv3yzOZ1xq?=
 =?Windows-1252?Q?P6QF87OGlxx2wLI3gDbvricD5V8OQpyCeEgkQ3OffcI996RbVdGm9C+0?=
 =?Windows-1252?Q?HgvkA5uyC5RkhRGhnyjDypnmkP1gbZs4kc6GOkx1JIiZUxOK19KYTYJY?=
 =?Windows-1252?Q?W3mW5/RIHbesbAtzMysjFSOuTU6gGzdzJdb94QaS5DxgyYcC4s/7yRZ0?=
 =?Windows-1252?Q?T1DaLWx3Vtpi0+legfvPx+4jNIwRvXJBJXC6JSzYcgj0cZnEzAcOuB9B?=
 =?Windows-1252?Q?mbAX/N7xnqwXQHOBggFtOz8HbrJsu6WKTU1AJHEnvT9rVyhJpllyByRd?=
 =?Windows-1252?Q?/KzpHCI73LIia1ZbELnn9uWVw+BlwsQEI2QWl0vN0k3Tzt9Qp66TpSRx?=
 =?Windows-1252?Q?uCxGntEYf0h3L8mtIXoti3hASpqo+suTzoszOcR8UNlkVQY3nePm9+NK?=
 =?Windows-1252?Q?87ESa3YaahKPm3bjO/iwi5e/Z4YAK3Sz8WbPAh6vwSvwSnJylPpQ2RTt?=
 =?Windows-1252?Q?KNV3PLOFUUrVuDDhS3tBOfBJ9lWWHmI63QemZqehjUJf7XSSej89u+N+?=
 =?Windows-1252?Q?Q6NKMkqF+1Bw0i1269Bxu/MT+wXCnInh+jaorZ6RG0/bQAhFrICJgxpf?=
 =?Windows-1252?Q?fayzlqoi/UiM0jHPXyb4j/yAOK17yzPx0ZSar7Xre4aqibhtCaBS2a/B?=
 =?Windows-1252?Q?nfXLtHaPtdDQ2Jqtl5HpEDo5Ph51q3J/u5T/sWCyD8mGCwDHrkfkHuQc?=
 =?Windows-1252?Q?msHREjRKNFzNQ4aSsBFftOYo38ER09XMc2iQZsXT85ANGSQXyVMSJtPu?=
 =?Windows-1252?Q?88ilECQ6rCJK/X+1IWxfcKiywqlwBkSP08nzQpE0xZlAgxFD9JF2skKT?=
 =?Windows-1252?Q?Jyvjkn0PUXgrb66Kd2IrMGqUPdsVSBVLxdOCGzDgYPCx5TOaiNDkaIeZ?=
 =?Windows-1252?Q?tPvyOgLLx+zR+NZVBYsamuik/HxN0u+STRfjielPsEM9n9Xtwmx8CuV+?=
 =?Windows-1252?Q?MljZY9DwJaEx29DJlwyhxcSSkyyvx2U0T5x8H4clURQC6XV8fGC4z1LM?=
 =?Windows-1252?Q?gt5s+lNXyRrYfDy6GaueIbvmdIwmTMA854Y4buifk9GQTl/P0xubPUhh?=
 =?Windows-1252?Q?rrBxgF8QKrJFZO7Ujz0p0X+8qONhrT1NLElBApaeqijZCiKeJi/Ewvkj?=
 =?Windows-1252?Q?BumGzBJ48I92oukTfjaAxdtg7EmXWHd2dkpeAj/72TQKaFOjw2XYcYmM?=
 =?Windows-1252?Q?3P6hWF6Z2GQKLwrg42UdM52lZZFCh/S5XncIwI+f1+ApcfyOWRE5HB80?=
 =?Windows-1252?Q?/aMA6U4kvYhKkK1QuoG6Q390qLXAKA30UaTZeuENYpBnlEuLAmtRhg?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SJ0PR20MB6079F810B9623E6919B3DB6DFA622SJ0PR20MB6079namp_"
MIME-Version: 1.0
X-OriginatorOrg: zenlayer.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR20MB6079.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebb68466-3b9f-467e-69c6-08dcd794131a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 03:43:35.5130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0d27725c-b11d-49f0-b479-a26ae758f26d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7NQKcSR9vvQRcFPG39KAGWvLMTz76UVIDjtyFdMinZ5CBFczL5CKahdDLC7YhZvPObrHmpAfRCD4gA++JZ6iwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR20MB4297
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zenlayer.onmicrosoft.com; s=selector2-zenlayer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rQVgSAt4WcI+mX3R65NFB5+/qWrC6XJ/kuj011rbYkA=;
 b=GqN+NnovddoMV1+3N+cC4XmPrraLDEknAwypPR/atikdSk5/Ig8mO7hMdkU2SyGp7rqfRlr1bg9ttyz5toqNPeS0axCKKjrjVUgwPcSKt6b1PNMRT/bDXj9kJZ9kn1AXCfsyvnlcEaHXhqGNAb1NtpVtLNCadblMe02exmMQRDU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=zenlayer.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zenlayer.onmicrosoft.com
 header.i=@zenlayer.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-zenlayer-onmicrosoft-com header.b=GqN+Nnov
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=zenlayer.com;
Subject: Re: [Intel-wired-lan] [EXTERNAL] Re: [EXTERNAL] Re: [bug
 report]iavf: deadlock on detach/attach vf to VM with net_failover
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_000_SJ0PR20MB6079F810B9623E6919B3DB6DFA622SJ0PR20MB6079namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Should setup a net failover device.
The xml like this,
<interface type=3D'network'>
  <mac address=3D'52:54:00:00:12:53'/>
  <source network=3D=92virbr0=92 />
  <model type=3D'virtio'/>
  <driver name=3D'vhost' queues=3D'4'/>
  <link state=3D'down'/>
  <teaming type=3D'persistent'/>
  <alias name=3D'ua-backup0'/>
</interface>
<interface type=3D'hostdev' managed=3D'yes'>
  <mac address=3D'52:54:00:00:12:53'/>
  <source>
    <address type=3D'pci' domain=3D'0x0000' bus=3D'0x42' slot=3D'0x02' func=
tion=3D'0x5'/>
  </source>
  <teaming type=3D'transient' persistent=3D'ua-backup0'/>
</interface>

After the VM booted, detach the VF and attach the VF.
The vf.xml like this,
<interface type=3D'hostdev' managed=3D'yes'>
  <mac address=3D'52:54:00:00:12:53'/>
  <source>
    <address type=3D'pci' domain=3D'0x0000' bus=3D'0x42' slot=3D'0x02' func=
tion=3D'0x5'/>
  </source>
  <teaming type=3D'transient' persistent=3D'ua-backup0'/>
</interface>

Command like this, virsh detach-device $domain vf.xml ; , virsh attach-devi=
ce $domain vf.xml
The VM hangs.

--
Best Regards,
Faicker


--_000_SJ0PR20MB6079F810B9623E6919B3DB6DFA622SJ0PR20MB6079namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Aptos",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
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
<body lang=3D"en-CN" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">Should setup a net =
failover device.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">The xml like this,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&lt;interface type=
=3D'network'&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;mac addr=
ess=3D'52:54:00:00:12:53'/&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;source n=
etwork=3D=92virbr0=92 /&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;model ty=
pe=3D'virtio'/&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;driver n=
ame=3D'vhost' queues=3D'4'/&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;link sta=
te=3D'down'/&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;teaming =
type=3D'persistent'/&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&nbsp; &lt;alias na=
me=3D'ua-backup0'/&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">&lt;/interface&gt;<=
o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">After the VM booted=
, detach the VF and attach the VF.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">The vf.xml like thi=
s,<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">Command like this, =
virsh detach-device $domain vf.xml ; , virsh attach-device $domain vf.xml<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">The VM hangs.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">--&nbsp;<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Best Regards,<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Faicker<o:p></o:p><=
/span></p>
</div>
</div>
<div id=3D"mail-editor-reference-message-container">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR20MB6079F810B9623E6919B3DB6DFA622SJ0PR20MB6079namp_--
