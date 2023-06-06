Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CA27247A4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 17:25:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 018BC61263;
	Tue,  6 Jun 2023 15:25:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 018BC61263
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686065135;
	bh=GjUoi1u5+Nihywt877OKig5j1EHkhJoyaWVwuiOuFGg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7CFBO1ixYh43C8FijYZOb9beFyxJSAH8/MIwviZtUTJ37SWnaDSlulI/pfMgYLN5J
	 T6xAV5UlyS1mZstLzlAaGLykRg2JxNXpZ9uBqpJdBZ9dnluEyxRGa85mAK6Wofv+wf
	 mogIj245X5xrcu5O9FP04BDEwAkhmh4a5Jxljjkn10W0l1FwmHvRSfmuSdjvb1nB+f
	 NE85VNjszMbdM50pDlZchu5NGr6yhVetso/4V89u8eJU6uzvBmQjVS6jX7XB161BvK
	 vkLnqWKRNiad6IuVeKn10g0QIC7LY7UQ8Mv1lhPKg8mn005hXDFm8pJAiRwt5prJWU
	 zLxvPbI1X4R5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BggX6er8H8sT; Tue,  6 Jun 2023 15:25:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B07DF61244;
	Tue,  6 Jun 2023 15:25:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B07DF61244
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D29041BF36B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7BBD40B85
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7BBD40B85
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JMhpPx2LBIlV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 15:25:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE44840131
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2112.outbound.protection.outlook.com [40.107.243.112])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE44840131
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:25:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f4yXNvzWVkHFc9EYS6zhgw0n+x+7trLPk5/ISFfeArKbFBAp8/wToCg7rKEN8HzAk/iQ0goRj/XPm9cWZGhDW3aOEtGsYa8vMVnglSBis9vyJe93+eaB7fR13pmd7sQRFYrsnCjQFRQuBx0PsP8ANSC7rH7i7QmJFoy1ThB7vGf0tiWfS+tx7xTc8JiTzlh8hvjBICEgy//Z8Y280XHCXF6MJkwuwbLr7iaATqldApWVAk3nyYOzyW8Bxo9c3fXtmjHkY3HpZ3Ol2xQHq+G7caI5tXH3nmkI833iyCN9mcLEUXdKn3dmG5vT/GfUtEgAJ28HCNuMacrujwPYEat4Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TrL7IhnUNymw4cI5DEbDPnuuhoNxIqnsZnHCmP7Tel0=;
 b=f6xIawjIDDOwjYyzITgTRDeNrTClQhU/l5uNg0YdRZcF5rseZE58C4QrVpVyq15pFMnG/KMFUKAKXqpZ5a642XeyqwV2b/VjR8TiAWUv6lZaeKuriaVr4QTwYcPiWQO1kuMs+l/ApAP2am9XVDO95UNTV58uhtSviRm39xvegkXt7NA/jsGs2fkwslNWkHcm2HNIerpSZ/fMjvqjgg5BEr8cZ8AmaeZ7l6cmwkTOOhpEtFpTMFRnTNn4tAmQDDhlqO0es0bDLd9nt2CEVigm8xjYM91jP5+xV8Bszbv1enTwdo2jR3GYeGsx3x+YpnICmeVJZp3E4AsPfLarMEXbnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by BLAPR13MB4627.namprd13.prod.outlook.com (2603:10b6:208:330::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 6 Jun
 2023 15:25:25 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 15:25:25 +0000
Date: Tue, 6 Jun 2023 17:25:18 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZH9P3hXDcEIWzGqQ@corigine.com>
References: <20230601131929.294667-1-marcin.szycik@linux.intel.com>
 <20230601131929.294667-3-marcin.szycik@linux.intel.com>
 <ZH2plrPDtUdmjL7w@corigine.com>
 <63ccadd7-316d-cb1f-b1d6-4f2911120959@intel.com>
Content-Disposition: inline
In-Reply-To: <63ccadd7-316d-cb1f-b1d6-4f2911120959@intel.com>
X-ClientProxiedBy: AM0PR08CA0017.eurprd08.prod.outlook.com
 (2603:10a6:208:d2::30) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|BLAPR13MB4627:EE_
X-MS-Office365-Filtering-Correlation-Id: 0165b890-489e-4553-baaf-08db66a24031
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nxouR1Je/5Z9CMcxT3A8JNNF8QKzl8DDZrvufcGjEeQmG8rsJurV8KXYKxV2K0uzTUA+9wnNcELgh2JthhahDwL+erZXD8yqM7GP1OTc8+Lcj80Vpi7kLvJxgL1XXWr7u2ZpOahXz9sAshviZjnxBwhapV8h6sBW/sdX25BMWxSx8ItqflfHw4C21ZYkLrc33YfyLMTst44E0/OS+0qTKShqLgjn9nviqC8hFjjzt0+Nj7TcchKsL5206EWFj/6bDuIusEBKOPhT8B4sGKVPSDuloMNuxENYUsRbCUQZVSNqKUtlGHYUpHz7T1Mrl7auKS8cd7PM104o2F3+9udJ+WyaAtEqBk4TqXuUrSQJS+dLyXAw7ydg8EU93CWXgd2QfinCpikXhFLNTVjFy+Aef2scan0gQ4QbiSdQsJYOHwKseL8kJXZZppzJOPoiDpJFnBRZ1PoEc2uWszYbbS/jsDR5F5Gg+5KKJdJitUYh9gyJQJemHuG3Zfu31w0FE4MuAAaFzvGbwb1edaChMRvXfz87m4fpY0IXathePp+16PdLOwUSEM9KAcWJqt13Ie6rA4hJHXMW8yO8MbrLu6neRjIu/8+ynnuD4bdDus8dWT4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(39840400004)(366004)(396003)(376002)(136003)(451199021)(186003)(478600001)(6916009)(8676002)(8936002)(4326008)(41300700001)(66946007)(38100700002)(316002)(66556008)(66476007)(2616005)(83380400001)(6486002)(6666004)(6512007)(6506007)(86362001)(44832011)(5660300002)(7416002)(2906002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkVaQ1BMa2t6RWFHMnBvRXVESE9zcVBqSUhxUWNOblo1Rm0xZkdGMUt6MVpI?=
 =?utf-8?B?d2JKWWJLU2IvN1dIRmFvbGh6bmNrQUZVQTFVOXJrQVA3NXVHNFJ0eXFvcVQ0?=
 =?utf-8?B?K1k0QXZkeFFrZ3V1TGptaU02bVlmYytsRmQ0Z0J5NzJ1TzNZTisxRUpUT0FR?=
 =?utf-8?B?c2V3WE94Y1FGRmZEYzU0dlJ6MzdCWVNNQTVHVzNRNDB2aXJZaEZ0UnBVQlNF?=
 =?utf-8?B?SENRQ0IwcGdaT2dJNVM1aDc1emR6Z0YxZG1McHRXam5hcTRTQno0UVlxV09v?=
 =?utf-8?B?YVZ4UCt3bzB0c3hoL0RTUzhUaHlLUEN1M1dkMndSYXM4OE83dzQ3MncvcVFl?=
 =?utf-8?B?M2QyQWNnUHZ0dHU4T1pLYVU1VlMwRlBlYlZBTVE4ak5GRk1jTmZVb2ZhMDA4?=
 =?utf-8?B?M0FLWTNLN3FFQTVxYU94bFRsaWtreldFVHBFSzlZVnIwMlltckpNd3Ixc0ta?=
 =?utf-8?B?U0RKTnVRaHRiZmtZWEFLN1djYzFPTmU3V2tDclhzS3dnUFUvRmFjL3JvYlg2?=
 =?utf-8?B?U2lmRk9SaHRMNFlxTzRzcjR1M1BPV1NTQm5SZEdNR3J3dHg3cE5lZ3JkVVEx?=
 =?utf-8?B?SnV0c0V1NHdXV3E3M1NWWC9VNzRQNWVHcnRPeUNkZHJRTnovYXRvRGNQemNi?=
 =?utf-8?B?QnBxS3hMc2hFNWgxQXlXZlc4R1dvZlRtdXc0RmtBdVFlczg3by9TSzVKOEoy?=
 =?utf-8?B?NnQvelg3aUZJRjhIeEx2MjM0cFFNZjZuZzVndHBpQWgzck9SNXpoSU5MMVFx?=
 =?utf-8?B?Wm55Y1VDWjlpOWNwZGZIZTZpazVLTndKS1FlNDU2UzBLMWRnTHo3Y2tCb2ZH?=
 =?utf-8?B?TlJESWtTUTRHNVo2eHZhbG4yR1Q3UTJRTUlMVVZVRmJCbldRd2RuZXo5aHEr?=
 =?utf-8?B?Ri9HV2VQWHZvTU9TKzVYT1U5RmN6czVMR3o3dVhQWmVaZHhpb1RFb1FUOS94?=
 =?utf-8?B?eWpNQUlNVEZqTldyUmJjMUp1aFJ6bWtNWHFIRFFrTmo4SEtNaTUwUE1ENk1q?=
 =?utf-8?B?SDIyMGpZUUUvQi9ERmlGNC92a2dZWkdCbUtXNzBFZ2NiRmw2S3ArMWlINjl0?=
 =?utf-8?B?ZHFYVmlFa09XTkovOEF2aFA1dkpQY2VZU2xrdnFENG1SWWEyMHF2QXlCWExG?=
 =?utf-8?B?V1V3Um9KclQzUHF0dnJ0R3dTQkVuQlE0MFprZFMxUTlKY3Y1WmJYd1JlM3ZG?=
 =?utf-8?B?U09WeDBuN203Z2pWZVR4YnU5Y0g0bnVjUzRtd2VOTnFrcEJ2RTlxQzlMY3R6?=
 =?utf-8?B?TWp4UDd6ZUpMWEJSUXRzNGJEdlV6RDV3cEdNY1VOQi9LRUpyNW9nOVlZaFlD?=
 =?utf-8?B?cnBBd0YyOFdzY0YwbVlUa08yeFIwVmltMzB0Q0xOQWlFbmdOYXNpUkF4RjlG?=
 =?utf-8?B?MnJWeS9zQVZITmoyNlhRYnozSytlUzhLRTdKc2V1aTRVQU9XQ3A3VzZ6NFlJ?=
 =?utf-8?B?L3pCMTdRUEhzWXpZT3hBTlZCcHJNMmFyaXZGS3RmcHM4VHcyREJLSS9jbldH?=
 =?utf-8?B?NmQ1V2ZRZ1VyZWFUdi95VnVvSEM5MWZJZU9uNTRzemVyLytIRnpIS3plV1NJ?=
 =?utf-8?B?OFUrbnBzYWYva2hYT0JkT2EzYnR3K1VOQURGYUY4TFpEOVVmRlErUEtOQTE5?=
 =?utf-8?B?bG1EYkRROWJRNlRZYldnQzUwYkpQMmZyZDVUb201eFJsaDVvOENPWG1Bdllx?=
 =?utf-8?B?c25UUHdMTXZhTy96QUQ5R1lxVkJJdm80alFsZWhGWlVKUCtYbmtmY3Bsc0pl?=
 =?utf-8?B?YjZ4bERid1daL00xNEFaRWJXcTVGNnpqRUh1OHV4am5nak5VaWlRbE4vTlN0?=
 =?utf-8?B?QUJaK1ZqeVNTUTZFcXF4SjM0dTJFbkc2RDZnUjdQTTI4T0l0M1RJNUc2TENx?=
 =?utf-8?B?K0w4Z1dYZ28yUDNKamM3VTV1TjZZc2VpQXk3REhBMlQzWEdLV2NIUy94KzE0?=
 =?utf-8?B?OS9kc2dib2NIcU4xeDV6S3FnY2VZc1BWcXVnSUFIUi8wSnVrVi9ab1R2UWxP?=
 =?utf-8?B?Qmx6MVVkOS85UTY4M0xmNmg2YzNmQWxVSU9MdnF3YnlabXZabXkzbVp4bUFp?=
 =?utf-8?B?cXNGd2hMdzRiV1hNZzFYdjNiQjQwOXl1Yk51WVpsQitDb3RXWmtvdWhueE1G?=
 =?utf-8?B?TllGaGFGSW1ta3ZNWmJnSmZObU01ZGtEZzJoeDdnaUhGaVhuR25nUi9PMUM1?=
 =?utf-8?B?UnRIeXJrY0Mxd3FibHdpT3lqdHZ4djhNWVc5MVpsOXJIOTNJbTRKZE1LcUda?=
 =?utf-8?B?OUcrYW1oUE9pa2c4QUFhSTlra3pRPT0=?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0165b890-489e-4553-baaf-08db66a24031
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 15:25:25.2223 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gNQe6ft+IxgvKtTSVMkMnvy63Kf605mkNpXQLAvTcdNUzN/nQIbIeSxCQmDrXK+WL3BfWrHUBLFSTvkRmvxtUcaBa78naqK+TPGtgqs2pmg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR13MB4627
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TrL7IhnUNymw4cI5DEbDPnuuhoNxIqnsZnHCmP7Tel0=;
 b=LNUb4PNk89cqMQVmvzH0GENUkUh6+f6EGs+hQL9JhMhK4ihtZtJpYvqYELnj6uMe2F2YEKlhaDe+o/qkoTs07kyeIcq192NvDbis8rwGhTKgPCzGj3ntULZ3QLvb4EK0SerLYi/nKSM70zkgLuIjOJ5T/rGWLE6eoyKuwKeCl24=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=LNUb4PNk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next 2/6] ip_tunnel: convert
 __be16 tunnel flags to bitmaps
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBKdW4gMDYsIDIwMjMgYXQgMDM6MTc6NDdQTSArMDIwMCwgQWxleGFuZGVyIExvYmFr
aW4gd3JvdGU6Cj4gRnJvbTogU2ltb24gSG9ybWFuIDxzaW1vbi5ob3JtYW5AY29yaWdpbmUuY29t
Pgo+IERhdGU6IE1vbiwgNSBKdW4gMjAyMyAxMToyMzozNCArMDIwMAo+IAo+ID4gT24gVGh1LCBK
dW4gMDEsIDIwMjMgYXQgMDM6MTk6MjVQTSArMDIwMCwgTWFyY2luIFN6eWNpayB3cm90ZToKPiA+
PiBGcm9tOiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxleGFuZHIubG9iYWtpbkBpbnRlbC5jb20+Cj4g
Cj4gWy4uLl0KPiAKPiA+PiAgbmV0L2lwdjQvZm91X2JwZi5jICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAyICstCj4gPj4gIG5ldC9pcHY0L2dyZV9kZW11eC5jICAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICAgMiArLQo+ID4+ICBuZXQvaXB2NC9pcF9ncmUuYyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAxMzEgKysrKysrKysrKystLS0tLS0tCj4gPj4gIG5ldC9pcHY0L2lw
X3R1bm5lbC5jICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1MSArKysrLS0tCj4gPj4gIG5l
dC9pcHY0L2lwX3R1bm5lbF9jb3JlLmMgICAgICAgICAgICAgICAgICAgICB8ICA4MSArKysrKysr
LS0tLQo+ID4+ICBuZXQvaXB2NC9pcF92dGkuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgMzEgKysrLS0KPiA+PiAgbmV0L2lwdjQvaXBpcC5jICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDIxICsrLQo+ID4+ICBuZXQvaXB2NC91ZHBfdHVubmVsX2NvcmUuYyAgICAgICAg
ICAgICAgICAgICAgfCAgIDUgKy0KPiA+PiAgbmV0L2lwdjYvaXA2X2dyZS5jICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDg3ICsrKysrKystLS0tLQo+ID4+ICBuZXQvaXB2Ni9pcDZfdHVu
bmVsLmMgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTQgKy0KPiA+PiAgbmV0L2lwdjYvc2l0
LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA5ICstCj4gPj4gIG5ldC9uZXRm
aWx0ZXIvaXB2cy9pcF92c19jb3JlLmMgICAgICAgICAgICAgICB8ICAgNiArLQo+ID4+ICBuZXQv
bmV0ZmlsdGVyL2lwdnMvaXBfdnNfeG1pdC5jICAgICAgICAgICAgICAgfCAgMjAgKy0tCj4gPj4g
IG5ldC9uZXRmaWx0ZXIvbmZ0X3R1bm5lbC5jICAgICAgICAgICAgICAgICAgICB8ICA0NSArKyst
LS0KPiA+PiAgbmV0L29wZW52c3dpdGNoL2Zsb3dfbmV0bGluay5jICAgICAgICAgICAgICAgIHwg
IDU1ICsrKystLS0tCj4gPj4gIG5ldC9wc2FtcGxlL3BzYW1wbGUuYyAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAyNiArKy0tCj4gPj4gIG5ldC9zY2hlZC9hY3RfdHVubmVsX2tleS5jICAgICAg
ICAgICAgICAgICAgICB8ICAzOSArKystLS0KPiA+PiAgbmV0L3NjaGVkL2Nsc19mbG93ZXIuYyAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDI3ICsrLS0KPiA+PiAgNDAgZmlsZXMgY2hhbmdlZCwg
Njk1IGluc2VydGlvbnMoKyksIDM5MiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gbml0OiB0aGlzIGlz
IGEgcmF0aGVyIGxvbmcgcGF0Y2gKPiBJIGtub3csIGJ1dCB5b3UgY2FuJ3QgZG8gYW55dGhpbmcg
d2l0aCBpdC4gSSdtIGNoYW5naW5nIHRoZSB0eXBlIG9mIHRoZQo+IGZpZWxkcyBmcm9tIGBfX2Jl
MTZgIHRvIGB1bnNpZ25lZCBsb25nICpgIGFuZCB0aGV5J3JlIGFjY2Vzc2VkIGluIGEgZ29vZAo+
IHRvbiBvZiBwbGFjZXMgYXJvdW5kIHRoZSBrZXJuZWwuIFRoaXMgcGF0Y2ggaXMgYXRvbWljIGRl
c3BpdGUgYmVpbmcKPiBodWdlLCBhbnkgc2VwYXJhdGlvbiB3b3VsZCBicmVhayBjb21waWxhdGlv
biDCr1xfKOODhClfL8KvCgpZZXMsIEkgY29uY2VkZSB0aGF0IGl0IG1heSB3ZWxsIGJlIHRoZSBs
ZWFzdCB3b3JzdCBvcHRpb24uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
