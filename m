Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3058C5324E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 May 2022 10:05:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9AF8408A8;
	Tue, 24 May 2022 08:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pXCJq9jsF_0W; Tue, 24 May 2022 08:05:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62D8C404CF;
	Tue, 24 May 2022 08:05:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A7171BF28D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 08:05:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94AE1404CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 08:05:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PH4Le6mAnEMS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 May 2022 08:05:39 +0000 (UTC)
X-Greylist: delayed 00:05:40 by SQLgrey-1.8.0
Received: from relay.yourmailgateway.de (relay.yourmailgateway.de
 [46.38.247.118])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF3DC400F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 08:05:38 +0000 (UTC)
Received: from mors-relay-8404.netcup.net (localhost [127.0.0.1])
 by mors-relay-8404.netcup.net (Postfix) with ESMTPS id 4L6mnk4F6Lz7yTC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 09:59:54 +0200 (CEST)
Authentication-Results: mors-relay-8404.netcup.net;
 dkim=permerror (bad message/signature format)
Received: from policy02-mors.netcup.net (unknown [46.38.225.53])
 by mors-relay-8404.netcup.net (Postfix) with ESMTPS id 4L6mnk3tLnz4xB4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 09:59:54 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at policy02-mors.netcup.net
Received: from mxf9a8.netcup.net (unknown [10.243.12.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by policy02-mors.netcup.net (Postfix) with ESMTPS id 4L6mnj56m1z8sZg
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 09:59:53 +0200 (CEST)
Received: from mail.anderss.intra (ip4d162485.dynamic.kabel-deutschland.de
 [77.22.36.133])
 by mxf9a8.netcup.net (Postfix) with ESMTPSA id DD865120036
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 09:59:52 +0200 (CEST)
Authentication-Results: mxf9a8;
 spf=pass (sender IP is 77.22.36.133) smtp.mailfrom=sven@anderss.de
 smtp.helo=mail.anderss.intra
Received-SPF: pass (mxf9a8: connection is authenticated)
Received: from [10.10.22.187] (unknown [10.10.22.187])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.anderss.intra (Postfix) with ESMTPSA id 3140CD20C96
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 09:59:52 +0200 (CEST)
Resent-From: Sven Anders <sven@anderss.de>
Resent-To: intel-wired-lan@lists.osuosl.org
Resent-Date: Tue, 24 May 2022 09:59:51 +0200
Resent-Message-ID: <b85d3822-c774-8695-919f-41580f00cbe5@anderss.de>
Received: from BEZP281MB2439.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:45::13)
 by FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM with HTTPS; Tue, 17 May 2022
 20:46:01 +0000
Received: from AM5PR1001CA0013.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:206:2::26)
 by BEZP281MB2439.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:45::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.12; Tue, 17 May
 2022 20:46:01 +0000
Received: from BE0DEU01FT010.eop-deu01.prod.protection.outlook.com
 (2603:10a6:206:2:cafe::ae) by AM5PR1001CA0013.outlook.office365.com
 (2603:10a6:206:2::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13 via Frontend
 Transport; Tue, 17 May 2022 20:46:01 +0000
Authentication-Results: spf=softfail (sender IP is 52.58.166.242)
 smtp.mailfrom=kernel.org; dkim=pass (signature was verified)
 header.d=kernel.org;dmarc=pass action=none
 header.from=kernel.org;compauth=pass reason=100
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 kernel.org discourages use of 52.58.166.242 as permitted sender)
Received: from inbound-52-58-166-242-eu-central-1.prod.hydra.sophos.com
 (52.58.166.242) by BE0DEU01FT010.mail.protection.outlook.com (20.128.125.118)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.5 via Frontend
 Transport; Tue, 17 May 2022 20:46:00 +0000
Received: from ip-172-20-101-21.eu-central-1.compute.internal
 (ip-172-20-101-21.eu-central-1.compute.internal [127.0.0.1])
 by inbound-52-58-166-242-eu-central-1.prod.hydra.sophos.com (Postfix) with
 ESMTP id 4L2p6w3lHZzqTtH
 for <sven.anders@anduras.de>; Tue, 17 May 2022 20:46:00 +0000 (UTC)
Authentication-Results-Original: mx-01-eu-central-1.prod.hydra.sophos.com;
 spf=pass smtp.mailfrom=kuba@kernel.org; dkim=pass header.d=kernel.org
 header.from=kernel.org; dmarc=pass (recordpolicy=none) header.from=kernel.org
Received-SPF: pass receiver=mx-01-eu-central-1.prod.hydra.sophos.com;
 client-ip=145.40.68.75; envelope-from=<kuba@kernel.org>;
 helo=ams.source.kernel.org; 
X-Sophos-Product-Type: Gateway
X-Sophos-Email-ID: bdbcd5e60f2f464cae7b0f691d9c8e7c
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx-01-eu-central-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4L2p6n41przvPrl
 for <sven.anders@anduras.de>; Tue, 17 May 2022 20:45:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A3940B81C36;
 Tue, 17 May 2022 20:45:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5109CC385B8;
 Tue, 17 May 2022 20:45:51 +0000 (UTC)
Date: Tue, 17 May 2022 13:45:50 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Sven Anders <sven.anders@anduras.de>
Message-ID: <20220517134550.7c451a83@kernel.org>
In-Reply-To: <ad3e244d-2f87-c74b-1d40-c21e286a721c@anduras.de>
References: <700118d5-2007-3c13-af2d-3a2a6c7775bd@anduras.de>
 <ad3e244d-2f87-c74b-1d40-c21e286a721c@anduras.de>
X-Sophos-Email: [eu-central-1] Antispam-Engine: 5.0.0,
 AntispamData: 2022.5.17.200620
X-Sophos-SenderHistory: ip=145.40.68.75, fs=0, fso=0, da=146278964, mc=0, sc=0,
 hc=0, sp=0, re=0, sd=0, hd=0
X-LASED-SpamProbability: 0.083173
X-LASED-Hits: AUTH_RES_PASS 0.000000, BODY_SIZE_4000_4999 0.000000,
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 CT_TEXT_PLAIN_UTF8_CAPS 0.000000, DATE_TZ_NA 0.000000, DKIM_ALIGNS 0.000000,
 DKIM_SIGNATURE 0.000000, DQ_S_H 0.000000, ECARD_WORD 0.000000,
 HTML_00_01 0.050000, HTML_00_10 0.050000, INBOUND_SOPHOS 0.000000,
 IN_REP_TO 0.000000, KNOWN_MTA_TFX 0.000000, LEGITIMATE_SIGNS 0.000000,
 MSG_THREAD 0.000000, MULTIPLE_RCPTS 0.100000, MULTIPLE_REAL_RCPTS 0.000000,
 NO_CTA_FOUND 0.000000, NO_CTA_URI_FOUND 0.000000, NO_FUR_HEADER 0.000000,
 NO_URI_HTTPS 0.000000, REFERENCES 0.000000, SXL_IP_TFX_WM 0.000000,
 __ANY_URI 0.000000, __AUTH_RES_DKIM_PASS 0.000000,
 __AUTH_RES_DMARC_PASS 0.000000, __AUTH_RES_PASS 0.000000,
 __BANNER_TRUSTED_SENDER 0.000000, __BODY_NO_MAILTO 0.000000,
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __CC_NAME 0.000000, __CC_NAME_DIFF_FROM_ACC 0.000000, __CC_REAL_NAMES 0.000000,
 __CT 0.000000, __CTE 0.000000, __CT_TEXT_PLAIN 0.000000,
 __DKIM_ALIGNS_1 0.000000, __DKIM_ALIGNS_2 0.000000, __DQ_IP_SUSP_1 0.000000,
 __DQ_IP_SUSP_2 0.000000, __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000,
 __DQ_NEG_IP 0.000000, __DQ_S_HIST_1 0.000000, __DQ_S_IP_100K 0.000000,
 __DQ_S_IP_10K 0.000000, __DQ_S_IP_1K 0.000000, __DQ_S_IP_1MO 0.000000,
 __DQ_S_IP_2D 0.000000, __DQ_S_IP_FSO_100K 0.000000, __DQ_S_IP_FSO_1K 0.000000, 
 __DQ_S_IP_HD_0 0.000000, __DQ_S_IP_RE_0 0.000000, __DQ_S_IP_RE_49_L 0.000000, 
 __DQ_S_IP_RE_4_L 0.000000, __DQ_S_IP_RE_99_L 0.000000,
 __DQ_S_IP_RE_9_L 0.000000, __DQ_S_IP_SP_0_P 0.000000, __FORWARDED_MSG 0.000000,
 __FROM_DOMAIN_NOT_IN_BODY 0.000000, __FROM_NAME_NOT_IN_ADDR 0.000000,
 __FROM_NAME_NOT_IN_BODY 0.000000, __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000, 
 __HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000, __HIGHBITS 0.000000,
 __IN_REP_TO 0.000000, __MAIL_CHAIN 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MULTIPLE_RCPTS_CC_X2 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __PHISH_SPEAR_SUBJ_ALERT 0.000000, __RCVD_FROM_DOMAIN 0.000000,
 __REFERENCES 0.000000, __SANE_MSGID 0.000000, __STOCK_PHRASE_24 0.000000,
 __SUBJ_ALPHA_END 0.000000, __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000,
 __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000,
 __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_NO_MAILTO 0.000000, __URI_NO_WWW 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-LASED-Impersonation-Category: NONE
X-Sophos-MH-Mail-Info-Key: NEwycDZ3M2xIWnpxVHRILTE3Mi4yMC4xMDEuMjE=
X-MS-Exchange-Organization-ExpirationStartTime: 17 May 2022 20:46:00.8337 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: fe32e2f1-450c-42f3-2d3a-08da3846408f
X-EOPAttributedMessage: 0
X-EOPTenantAttributedMessage: 639cc95b-aa9f-42bf-b982-a592003fbab3:0
X-MS-Exchange-Organization-MessageDirectionality: Incoming
X-MS-PublicTrafficType: Email
X-MS-Exchange-Organization-AuthSource: BE0DEU01FT010.eop-deu01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Office365-Filtering-Correlation-Id: fe32e2f1-450c-42f3-2d3a-08da3846408f
X-MS-TrafficTypeDiagnostic: BEZP281MB2439:EE_
X-MS-Exchange-Organization-SCL: -1
X-Microsoft-Antispam: BCL:1;
X-Forefront-Antispam-Report: CIP:52.58.166.242; CTRY:DE; LANG:en; SCL:-1; SRV:;
 IPV:NLI; SFV:NSPM; H:inbound-52-58-166-242-eu-central-1.prod.hydra.sophos.com; 
 PTR:inbound-52-58-166-242-eu-central-1.prod.hydra.sophos.com; CAT:NONE; SFS:; 
 DIR:INB; 
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2022 20:46:00.7712 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fe32e2f1-450c-42f3-2d3a-08da3846408f
X-MS-Exchange-CrossTenant-Id: 639cc95b-aa9f-42bf-b982-a592003fbab3
X-MS-Exchange-CrossTenant-AuthSource: BE0DEU01FT010.eop-deu01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEZP281MB2439
X-MS-Exchange-Transport-EndToEndLatency: 00:00:01.1870126
X-MS-Exchange-Processed-By-BccFoldering: 15.20.5273.013
X-Microsoft-Antispam-Mailbox-Delivery: ucf:1; jmr:0; auth:0; dest:C;
 OFR:CustomRules; ENG:(910001)(944506458)(944626604)(920097)(930097); 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WExXV3BSaUo0RUdERFRZYU1SVG42Yko4WGRDNXBUdEFzMzZJRnV3cm1EZTVM?=
 =?utf-8?B?VEZJVnpoVTVMWmtvNG5TaWtwcFNoaEp6K3BYM0pvZEFNc0dsVGkzbTgvY2x5?=
 =?utf-8?B?d1VsUi80QUJWbTk3WWlRVmdHOXg0bFZPTE1hSjVsS0FmZ0cxY3VzNlFNTnJr?=
 =?utf-8?B?bEsyS1VlM3NzdVZJV1RIcnNkWXFQd05lOGt0eDVCL3NFeEJnNEE3aEZweHBT?=
 =?utf-8?B?SnQ0YnBsdUhLQ3QzRTVERk0xVGdqaTFnTEswRkhXN2JSR1FnY3c1aGFvSSsx?=
 =?utf-8?B?T01PbnJGaGdzK2FSZXA5WC9XR2wzZUZ3YW9MY056MDdPcjJCbGhNaGUyVVVn?=
 =?utf-8?B?TGdOTHFzK0hQSHEyQ280dlY3c3BHOXRJM293MDY2RmNoSnIxRW5ydER4cW9o?=
 =?utf-8?B?eGlmL01CcFhodnRMQjZxaU1yanNRa2ZqR3lmM21VZTZqQ2FtcnErdlZKZXFP?=
 =?utf-8?B?UCt2U2dTWDJ6NkhwRzYxMTErTFYwTElyYlYxRzBITnZyQ2RvYnNTT0ZCQi8y?=
 =?utf-8?B?NDRYbThiTjZRaVRPS2ZGcFhHNUI0T1RPY1ozaFZqaUszTzBGeityVWlrcXlZ?=
 =?utf-8?B?WEgwMlV3clFsV0JHN2QrNWJ5c3lHR05jQlBlMHFNTkFvamxWRnBCMDBvS25l?=
 =?utf-8?B?YlJpWnp4YlczUjNpRlNFcXZpVXZnWG1ZdTJtbEhSbWZZc0V3REtZcTgxc1lz?=
 =?utf-8?B?QU44ZnN5ZmNNMHhsOGtVbndxNnZua3FWRTJScWFEUEEvTEpqdSt4YVZHVDM1?=
 =?utf-8?B?VC8rbVJyaVdCUnRQVnBYK29iTVhIRTZWK0FYRUdYZ1dvL0VUSFo5dHQ1eEp4?=
 =?utf-8?B?TXY5RDRxV2hXalVzQzl2TXk1UVRaY2dpRHg2UTJ3ZDkxVC9GNDFvUXEzdDJD?=
 =?utf-8?B?eFNNbU5idGF1cmNjWFpuK1RkSnEzelNBdGVTakV5bGdVMEd4MUYwRlJYcUow?=
 =?utf-8?B?a3N6MEliZGFNRmxVY2xZakdqMTFFWXdYUEQxVTA2UUp5UVg5Q1JFTTdsNmRP?=
 =?utf-8?B?SGhKczZmRlIycFRDbkJnWjhKRkNSWEQ1MFRqOTFyclVBVDZ2ZWJZYUVXc2NO?=
 =?utf-8?B?TGtCcWx0VUl4Y1lzZDd3bnc0bnZZQzdUY1Y5dzRHK2pkQjdsb24yR0FBbTZF?=
 =?utf-8?B?RHdyczdRRUxVY3ZEbXVXaWlycmowNG9xRk9id3haMk5PNHhQVzFJcFAyU1hY?=
 =?utf-8?B?dDVTOUVtM1MwZVY5QXZpcW8rWHhJZWRvYU90QzBQK20wUHlqTDljUHdZVTYy?=
 =?utf-8?B?ZEc0OFhQQmxObWNqTyt5anJkNittb2JvVWk2OU9lYVgzL1FmRVExeG9vaUdL?=
 =?utf-8?B?RWNrQWNIYjNPbGFCcEJ2QU1wbW1qVk1VWXNvQUQwSlV0ay9BOUZMRVFteC9W?=
 =?utf-8?B?dGRrdmtvUUdkVFN2RldUMFRrVXRHa1lXNm9VcVM4U3hCV2lpeGxMSUh1K1lX?=
 =?utf-8?B?OVhOdFptSmw1RlE5MEl4QjE5WVJGaUo5VEJsckNqbmdmZ2VFNGoyckN4NHR1?=
 =?utf-8?B?WG1mY2NsTFRDTm5vZXVFQUNGczZUeHcyZ3BXMHQwcnVPc2YrSW43TjFsYWU3?=
 =?utf-8?B?d1pyY3lNcllEbWVIVmRvcUtSZW51NUh1NnZsN1NLQ0UyWEtPcE9ReUxwSHBK?=
 =?utf-8?B?aXZnY3U4SWNkRGtIUlFvOGFlVFNRLzhBS1QwK1pyYUpzZ01nL0RUd1owUEd4?=
 =?utf-8?B?V0taN2pYQURVbG0wWXdGMVNLWmRmYkIwd0ZTVVE0YTIyVnFoT3BGVTNUQ3ZD?=
 =?utf-8?B?ZDB1T2tDZmRaODRLVmJZSnVSbUlrM0xYL3Q5VXgvTzBLb2hUMkhYV1RwL3VI?=
 =?utf-8?B?VjhnUWxVaXkxYTdxUUpESW8xR0VlUGVHZGdMaTRsODhLMjFaRUtadWQwLzR1?=
 =?utf-8?B?TWQ2SzNDaEMxNWJQam1BcFI2czkrQk1RcFpzQWJpM3ZmVytxVGNvT1hPaXMx?=
 =?utf-8?B?UmYyZ2tMSHo3RWxueXk4cHVmbFlkNHV3S1E5MGIvTHUxTXZ5aVdWSytPeC9B?=
 =?utf-8?B?Y0txdjRnOFVvWUp1WTVSV3hqend1MjlPUHhidTNMQXBLelQyTjJLSVRvM2NR?=
 =?utf-8?B?S2tlUkhMWTRZdUYzMVhIcnRyTDZQOHJjMFNpTFBPSmJIQklEcTlEQmxPSEdJ?=
 =?utf-8?B?OUJnVXNCdUsvM25TNTZlZzZuaENuYzhsN3FFRFViUE5QQlE2SkdBcDI4c1pp?=
 =?utf-8?B?RmNIWHAvS1lmaklpU0RUeWRJQkJnOHFXUldDeFZJenhTaWVjbXBESjNVYlRF?=
 =?utf-8?B?K1FZZnIyazczbjFDRmNRL0t1YUh2YUpFWjk1VS8zTHhvWGxBNVpRTzRDNE9Q?=
 =?utf-8?B?YUxua29ZRkpjSGV5dGIwS2Q2dHZFdTlUUmlscjk1V3ZsWXJkTVRnRGNreE1J?=
 =?utf-8?B?K2FQZTAvWU5NYlI5ZnFYUDlXVHhOTjhkZ1Q1a25HdWdHY2phWVVpVE8waldX?=
 =?utf-8?B?dlg5YVM1ZklGQVhtUFlaYXJraHVuR1IvSVBFNE1RVHBDVFZ2aU1EcS9GZllO?=
 =?utf-8?B?ZzZZY1RRTWRRMDlQems2TmpRTU52M08yTXBSTmZDdGhEQkRidmFIWEZLTE5V?=
 =?utf-8?B?WkJWWTlCS2k5YlhCWHlpUVhzbmRjNFpQQ214Q3dMVGViQWFySHF4bmVpZjg1?=
 =?utf-8?B?aGNyenlxTUErb0QvV3pnQnZYTVJrOXJub3hZazJlZGtMRWxpbEtwVHUrRFZu?=
 =?utf-8?B?RVpBd1FNWW93REdLZnFQdndFY1ZpaVg5Z0o2bHNXalNXMzFDSnRhWnhqMGhF?=
 =?utf-8?B?TVlPY2MzRVpuZ2lHL0dTRWtRTU1WYWdaQy9iaEZMMVNhMG5pV0pjbFBqcFpV?=
 =?utf-8?B?aVdIZEJPY0s0Zldjd1czTng0QmZRTGt2M3hPMnNBcDJXMGlGV2RKcm9DZ3RK?=
 =?utf-8?B?Qm8xOEFzVGkzVjV5TUxBODZSQT09?=
MIME-Version: 1.0
X-PPP-Message-ID: <165337919312.2319.15895816366225374459@mxf9a8.netcup.net>
X-PPP-Vhost: anderss.de
X-NC-CID: oaHNRDlMbLfwofZYeiKtgDUzCABOJhTt/P7ObyHFNkAy
Subject: Re: [Intel-wired-lan] Bonding problem on Intel X710 hardware
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
Cc: netdev <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Q0M6IGludGVsCgpPbiBUdWUsIDE3IE1heSAyMDIyIDE2OjIzOjE2ICswMjAwIFN2ZW4gQW5kZXJz
IHdyb3RlOgo+IEhlbGxvIQo+IAo+IFRoaXMgaXMgYSBmb2xsb3cgdXAgdG8gbXkgcXVlc3Rpb24u
IEkgZGlkIG5vdCBoZWFyIGFueXRoaW5nIHNvIGZhciwgYnV0IEkgdHJpZWQKPiB0byBmaW5kIHNv
bWUgc29tZSBpbmZvcm1hdGlvbiBtZWFud2hpbGUuCj4gCj4gSSd2ZSBnb3QgYSBndWVzcyBmcm9t
IHNvbWVib2R5LCB0aGF0IHRoZSBlcnJvciBtZXNzYWdlICJFcnJvciBJNDBFX0FRX1JDX0VJTlZB
TAo+IGFkZGluZyBSWCBmaWx0ZXJzIG9uIFBGLCBwcm9taXNjdW91cyBtb2RlIGZvcmNlZCBvbiIg
bWF5YmUgdHJpZ2dlcmVkLCBiZWNhdXNlCj4gSSdtIGhpdHRpbmcgYSBsaW1pdCBoZXJlLgo+IAo+
IFNvbWVib2R5IG90aGVyIHNhaWQsIHRoYXQgdGhpcyBzZWVtcyB0byBiZSBhbiBlcnJvciBpbiB0
aGUgImJvbmRpbmcgZHJpdmVyIiwgYnV0Cj4gSSBkbyBub3QgdGhpbmsgc28uIEFzaWRlIGZyb20g
dGhhdCwgdGhlcmUgc2VlbSB0byBiZSBubyBzcGVjaWFsICJib25kaW5nIiBtYWlsaW5nCj4gbGlz
dCBhbnltb3JlLiBTbyBJIHdpbGwgaGF2ZSB0byBhc2sgdGhpcyBxdWVzdGlvbnMgaGVyZSBhbnl3
YXkuLi4KPiAKPiBJIHdhbnQgdG8gdW5kZXJzdGFuZCB0aGUgcHJvYmxlbSB0byBjbGFzc2lmeSBp
dC4KPiAKPiAxKSBXaHkgaXMgdGhpcyAiZXJyb3IiIGlzc3VlZD8gRG8gSSByZWFsbHkgaGl0IGEg
bGltaXQgYW5kIHdoYXQgaXMgdGhpcyBjdXJyZW50IGxpbWl0Pwo+IDIpIElzIGl0IHJlYWxseSBh
biBlcnJvciBvciBpcyBpdCBtb3JlICJhIHdhcm5pbmciPwo+IDMpIFdoeSBpcyB0aGlzIGVycm9y
IHRyaWdnZXJlZCBvbmx5IHdoZW4gY2hhbmdpbmcgdGhlICJudHVwbGVzIGZpbHRlciIgYW5kIG5v
dCBkdXJpbmcKPiAgICAgdGhlIG5vcm1hbCBhZGRpbmcgb2YgVkxBTnM/Cj4gICAgIFJlbWFyazog
SSBjYW4gdHJpZ2dlciB0aGUgIm50dXBsZXMgZmlpbHRlciIgbGF0ZXIgb24gYWdhaW4gYW5kIGl0
IHN0aWxsIHdvcmtzLgo+IAo+IEkgYWxzbyB0cmllZCB0aGUgbGF0ZXN0IDUuMTgtcmMga2VybmVs
IHdpdGggdGhlIHNhbWUgcHJvYmxlbS4KPiAKPiBNYXliZSBzb21lYm9keSB3aWxsIGZpbmQgdGlt
ZSBhbmQgdHJ5IHRvIHJlcHJvZHVjZSB0aGlzPwo+IEkgd2lsbCBhbnN3ZXIgYW55IHF1ZXN0aW9u
cy4uLgo+IAo+IFJlZ2FyZHMKPiAgIFN2ZW4KPiAKPiBBbSAxMi4wNS4yMiB1bSAxNjowNSBzY2hy
aWViIFN2ZW4gQW5kZXJzOgo+ID4gSGVsbG8hCj4gPiAKPiA+IEknbSBoYXZpbmcgcHJvYmxlbXMg
c2V0dGluZyB1cCBhIGJvbmQgaW4gYWRhcHRpdmUgbG9hZCBiYWxhbmNpbmcKPiA+IG1vZGUgKGJh
bGFuY2UtYWxiLCBtb2RlIDYpIG9uIGFuIGludGVsIFg3MTAgbmV0d29yayBhZGFwdGVyIHVzaW5n
Cj4gPiB0aGUgaTQwZSBkcml2ZXIgY29ubmVjdGVkIHRvIGFuIEFydWJhIDI1MzAtNDhHIHN3aXRj
aC4KPiA+IFRoZSBuZXR3b3JrIGNhcmQgaGFzIDQgb24gYm9hcmQgcG9ydHMuCj4gPiBJJ20gdXNp
bmcgMiBwb3J0cyBmb3IgdGhlIGJvbmQgd2l0aCAzNiBWTEFOcyBvbiBpdC4KPiA+IAo+ID4gVGhl
IHNldHVwIGlzIGNvcnJlY3QsIGJlY2F1c2UgaXQgd29ya3Mgd2l0aG91dCBwcm9ibGVtcywgaWYK
PiA+IEkgdXNlIHRoZSBzYW1lIHNldHVwIHdpdGggMUdCaXQgSW50ZWwgaGFyZHdhcmUgKHVzaW5n
IHRoZQo+ID4gZTEwMDBlIGRyaXZlciwgdmVyc2lvbiAzLjIuNi1rLCBmaXJtd2FyZSA1LjEwLTIp
Lgo+ID4gCj4gPiBEYXRhIHBhY2tldHMgYXJlIG9ubHkgcmVjZWl2ZWQgc3BvcmFkaWNhbGx5LiBJ
ZiBJIHJ1biB0aGUgc2FtZSB0ZXN0Cj4gPiB3aXRoIG9ubHkgb25lIHNsYXZlIHBvcnQsIGl0IHdv
cmtzIHdpdGhvdXQgcHJvYmxlbXMuCj4gPiAKPiA+IEkgZGVidWdnZWQgaXQgZG93biB0byB0aGUg
cmVjZXB0aW9uIG9mIHRoZSBwYWNrZXRzIGJ5IHRoZQo+ID4gbmV0d29yayBoYXJkd2FyZS4KPiA+
IAo+ID4gSWYgSSByZW1vdmUgdGhlIG51bWJlciBvZiBWTEFOcyB1bmRlciA4LCBhbG1vc3QgYWxs
IHBhY2tldHMgYXJlCj4gPiByZWNlaXZlZC4gVGhlIGZld2VyIFZMQU5zIHRoZSBiZXR0ZXIgdGhl
IHJlY2VpdmUgcmF0ZS4KPiA+IAo+ID4gSSBzdXNwZWN0ZWQgdGhlIGhhcmR3YXJlIG9mZmxvYWRp
bmcgb3BlcmF0aW9ucyB0byBiZSB0aGUgY2F1c2UsIHNvIEkKPiA+IHRyaWVkIHRvIGRpc2FibGUg
dGhlbS4gSXQgcmVzdWx0ZWQgaW4gdGhlIGZvbGxvd2luZzoKPiA+IAo+ID4gIMKgSWYgSSB0dXJu
IG9mIHRoZSAibnR1cGxlLWZpbHRlcnMiIHdpdGgKPiA+ICDCoMKgIGV0aHRvb2wgLUsgZXRoMyBu
dHVwbGUgb2ZmCj4gPiAgwqDCoCBldGh0b29sIC1LIGV0aDMgbnR1cGxlIG9mZgo+ID4gIMKgaXQg
d2lsbCB3b3JrLgo+ID4gCj4gPiAgwqBCdXQgaWYgSSBkbyB0aGlzIEkgc2VlIHRoZSBmb2xsb3dp
bmcgZXJyb3JzIGluICJkbWVzZyI6Cj4gPiAgwqAgaTQwZSAwMDAwOjY1OjAwLjE6IEVycm9yIEk0
MEVfQVFfUkNfRUlOVkFMIGFkZGluZyBSWCBmaWx0ZXJzIG9uIFBGLCBwcm9taXNjdW91cyBtb2Rl
IGZvcmNlZCBvbgo+ID4gIMKgIGk0MGUgMDAwMDo2NTowMC4yOiBFcnJvciBJNDBFX0FRX1JDX0VJ
TlZBTCBhZGRpbmcgUlggZmlsdGVycyBvbiBQRiwgcHJvbWlzY3VvdXMgbW9kZSBmb3JjZWQgb24K
PiA+IAo+ID4gRGlzYWJsaW5nIGFueSBhbnkgb3RoZXIgb2ZmbG9hZGluZyBvcGVyYXRpb25zIG1h
ZGUgbm8gY2hhbmdlLgo+ID4gCj4gPiBGb3IgbWUgaXQgc2VlbXMsIHRoYXQgdGhlIGhhcmR3YXJl
IGZpbHRlciBpcyBkcm9wcGluZyBwYWNrZXRzIGJlY2F1c2UgdGhleQo+ID4gaGF2ZSB0aGUgd3Jv
bmcgdmFsdWVzIChtYWMtYWRkcmVzcyA/KS4KPiA+IFR1cm5pbmcgdGhlICJudHVwbGUtZmlsdGVy
cyIgb2ZmLCBmb3JjZXMgdGhlIG5ldHdvcmsgYWRhcHRlciB0byBhY2NlcHQKPiA+IGFsbCBwYWNr
ZXRzLgo+ID4gCj4gPiAKPiA+IE15IHF1ZXN0aW9uczoKPiA+IAo+ID4gMS4gQ2FuIGFueWJvZHkg
ZXhwbGFpbiBvciBjb25maXJtIHRoaXM/Cj4gPiAKPiA+IDIuIElzIHRoZSBhIGNvcnJlY3QgbWV0
aG9kIHRvIGZvcmNlIHRoZSBhZGFwdGVyIGluIHByb21pc2NvdXMgbW9kZT8KPiA+IAo+ID4gMy4g
QXJlIHRoZSBhbnkgc3BlY2lhbCBzZXR0aW5ncyBuZWVkZWQsIGlmIEkgdXNlIEFMQiBib25kaW5n
LCB3aGljaCBJIG1pc3NlZD8KPiA+IAo+ID4gCj4gPiBTb21lIGRldGFpbHM6Cj4gPiAtLS0tLS0t
LS0tLS0tCj4gPiAKPiA+IExpbnV4IGtlcm5lbCA1LjE1LjM1LWNvcmUyIG9uIHg4Nl82NC4KPiA+
IAo+ID4gCj4gPiBUaGlzIGlzIHRoZSBoYXJkd2FyZToKPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LQo+ID4gNCBwb3J0IEV0aGVybmV0IGNvbnRyb2xsZXI6Cj4gPiAgwqBJbnRlbCBDb3Jwb3JhdGlv
biBFdGhlcm5ldCBDb250cm9sbGVyIFg3MTAgZm9yIDEwR0JBU0UtVCAocmV2IDAyKQo+ID4gIMKg
ODA4NjoxNWZmIChyZXYgMDIpCj4gPiAKPiA+IHdpdGgKPiA+IAo+ID4gIMKgZHJpdmVyOiBpNDBl
Cj4gPiAgwqB2ZXJzaW9uOiA1LjE1LjM1LWNvcmUyCj4gPiAgwqBmaXJtd2FyZS12ZXJzaW9uOiA4
LjYwIDB4ODAwMGJkODAgMS4zMTQwLjAKPiA+ICDCoGJ1cy1pbmZvOiAwMDAwOjY1OjAwLjIKPiA+
ICDCoHN1cHBvcnRzLXN0YXRpc3RpY3M6IHllcwo+ID4gIMKgc3VwcG9ydHMtdGVzdDogeWVzCj4g
PiAgwqBzdXBwb3J0cy1lZXByb20tYWNjZXNzOiB5ZXMKPiA+ICDCoHN1cHBvcnRzLXJlZ2lzdGVy
LWR1bXA6IHllcwo+ID4gIMKgc3VwcG9ydHMtcHJpdi1mbGFnczogeWVzCj4gPiAKPiA+IAo+ID4g
VGhpcyBpcyBjdXJyZW50IGJvbmRpbmcgY29uZmlndXJhdGlvbjoKPiA+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiBFdGhlcm5ldCBDaGFubmVsIEJvbmRpbmcgRHJp
dmVyOiB2NS4xNS4zNS1jb3JlMgo+ID4gCj4gPiBCb25kaW5nIE1vZGU6IGFkYXB0aXZlIGxvYWQg
YmFsYW5jaW5nCj4gPiBQcmltYXJ5IFNsYXZlOiBOb25lCj4gPiBDdXJyZW50bHkgQWN0aXZlIFNs
YXZlOiBldGgzCj4gPiBNSUkgU3RhdHVzOiB1cAo+ID4gTUlJIFBvbGxpbmcgSW50ZXJ2YWwgKG1z
KTogMTAwCj4gPiBVcCBEZWxheSAobXMpOiAyMDAKPiA+IERvd24gRGVsYXkgKG1zKTogMjAwCj4g
PiBQZWVyIE5vdGlmaWNhdGlvbiBEZWxheSAobXMpOiAwCj4gPiAKPiA+IFNsYXZlIEludGVyZmFj
ZTogZXRoMwo+ID4gTUlJIFN0YXR1czogdXAKPiA+IFNwZWVkOiAxMDAwIE1icHMKPiA+IER1cGxl
eDogZnVsbAo+ID4gTGluayBGYWlsdXJlIENvdW50OiAwCj4gPiBQZXJtYW5lbnQgSFcgYWRkcjog
Njg6MDU6Y2E6Zjg6OWM6NDIKPiA+IFNsYXZlIHF1ZXVlIElEOiAwCj4gPiAKPiA+IFNsYXZlIElu
dGVyZmFjZTogZXRoNAo+ID4gTUlJIFN0YXR1czogdXAKPiA+IFNwZWVkOiAxMDAwIE1icHMKPiA+
IER1cGxleDogZnVsbAo+ID4gTGluayBGYWlsdXJlIENvdW50OiAwCj4gPiBQZXJtYW5lbnQgSFcg
YWRkcjogNjg6MDU6Y2E6Zjg6OWM6NDEKPiA+IFNsYXZlIHF1ZXVlIElEOiAwCj4gPiAKPiA+IAo+
ID4gUmVnYXJkcwo+ID4gIMKgU3ZlbiBBbmRlcnMKPiA+ICAgCj4gCj4gCj4gTWl0IGZyZXVuZGxp
Y2hlbiBHcsO8w59lbgo+ICAgU3ZlbiBBbmRlcnMKPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
