Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDF483DE7F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jan 2024 17:20:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DC464055D;
	Fri, 26 Jan 2024 16:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DC464055D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706286025;
	bh=R+sfOIFOK7iIf0+clwxO48d7/e5n9a2qn/jwgZvB3jI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SGr/BXbnakB/9WZ9ANAVuOHosCPK9zBPKaNUO+6K57OETdUEF6l9xkJtldGbCTAtn
	 6n+w8tvVYW3fFtpaZqcRXHo4nv0WdMrR+BRTAqa682fUYEM6PP7wI9xDeuIVANXpEl
	 86Yf0q3kg8gUiKXsjyvzGVvWBQLTxLYOn6yVWKIGKr8vEhziK/9lxNF16RtsLgjgK5
	 3Lxwu00vv2fQant93jDzBuXvZg0G3nUErHHJToo8zaLlVYRtuQeZEQgdAl8ykUBzwZ
	 RVTqtQlG9ghgiplGD+uhyXHGjLjWNFUFHF6eGG98zYc/E+esqyZpa3ftQwPJaczeVd
	 nlRa1mmtcKGQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BcZGkeaImV39; Fri, 26 Jan 2024 16:20:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBCE14039D;
	Fri, 26 Jan 2024 16:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBCE14039D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF9991BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 11:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9378380D7E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 11:37:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9378380D7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ioZcsMFkNyHw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jan 2024 11:37:30 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10olkn2080.outbound.protection.outlook.com [40.92.42.80])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B6D3F80C81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 11:37:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6D3F80C81
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tkdvl64g6lvyqqi0ZVR5SwUpmIYRNqw/pqakQCcgxozacAnVkepjau6RgdYtaCfctQt7NXUQ/NH8kFoXwAsu6bXjsyworj1qwhl9R0onb5RQAweVpvPfo1C7s27hS1GrpMiQYq0/TJsRKF4nnyG360hn0x3Bmt9RBx22WaoNiKfgBJ6TI9bAyMNKj/2C1lhlbzzDyW/pOzXPtHahUQnWMwE6k4LQjGt1V1sEzkZMegrtEddF6wcRMNNLkPSdsPI7MFF+AY05WKqpQMg27ALnu6X/UbnLLY5nTnBmocuWW+n3gSqNdrTAMa26zz/nuPbH207M/BjkF/GNCYWVm4xa0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+sfOIFOK7iIf0+clwxO48d7/e5n9a2qn/jwgZvB3jI=;
 b=jwkB8vaQA3O6WQiykngr5mhFnA1zOA1ZikL9Ig3W8xIAme/2bln7qWJUswx6+ZfKoy3wYcfVpTeWpr8fInf3xvLMNRiULrgJ0GslfIJEmousIAR0R0PXAXuuLW1UOOeKYLg22n//YDQ6dAWWZj18OMpTlHz4misMnj4bLNRxTDq7BOObHjS6wozhZ6c6SQ5+xVOgqgoT6Dbxl+K81NkkDZhT6AUgS9KSILwAVHWzgXMi97cGi49I59G7YCGpZf/qTPz8gc7JZ4LpLqc+OQxSTznd4/A+mxt/XjMMpSGO8xX3S9GipqrR+6zs1QnK6CZX9e/9xS51J1mus2s68Ssyow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MW4PR17MB4274.namprd17.prod.outlook.com (2603:10b6:303:72::7)
 by CH2PR17MB3832.namprd17.prod.outlook.com (2603:10b6:610:5f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Fri, 26 Jan
 2024 11:37:28 +0000
Received: from MW4PR17MB4274.namprd17.prod.outlook.com
 ([fe80::c46e:d60d:8ffb:5bc7]) by MW4PR17MB4274.namprd17.prod.outlook.com
 ([fe80::c46e:d60d:8ffb:5bc7%3]) with mapi id 15.20.7228.026; Fri, 26 Jan 2024
 11:37:28 +0000
Date: Fri, 26 Jan 2024 17:07:08 +0530
From: "S." <strykar@hotmail.com>
To: "=?utf-8?Q?netdev=40vger.kernel.org?=" <netdev@vger.kernel.org>
Message-ID: <MW4PR17MB42749868DA9C32BBDA50F4F4BB792@MW4PR17MB4274.namprd17.prod.outlook.com>
X-Mailer: Mailspring
Content-Type: multipart/alternative; boundary="65b39964_56e44cdf_23a607"
X-TMN: [zsxDi8Pbu4T1b/QF2viuIIsUdUGAVAYV]
X-ClientProxiedBy: BMXP287CA0001.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::13) To MW4PR17MB4274.namprd17.prod.outlook.com
 (2603:10b6:303:72::7)
X-Microsoft-Original-Message-ID: <681E467D-40F8-4A2E-B38D-ED2E66DD7975@getmailspring.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR17MB4274:EE_|CH2PR17MB3832:EE_
X-MS-Office365-Filtering-Correlation-Id: 876e9b7f-21df-4123-3678-08dc1e632ccc
X-MS-Exchange-SLBlob-MailProps: Z68gl6A5j2/JPE+ICbLav64V5NJhFzf2j538y3Pk9WrQ101i7m130e1qUi8NTzGt/55HqygzB3y4phSTjnh1PvAV8CimJJ1T0vjkQKKF9C+ldHICHdEyrKRnEQK2BAUK6M5T1WaaLIn39zraG0E3jr0qzbIwFJuvOwBKfsfCLcMcqPSfsLydWElpqAluqfgbDy4Y+Xpwdn5FRWuZ5sAfCTmOs+m2lBwt59xJq6HETLkj3FWZMrBPkHUbDqN3wW0TvIxx5mf6szU5arXbtWQCnqKcNzWZt36p/olpATvNjiUosKzwM75wjeH5lMtOirjHGRKm9d4gUB+AkMVvPh+vXEloifHS88tGY9b+mLuUTgkh/HsifS7tWrQv3dbtmsIoCIZtI+xbOXBTwapDxL8vqxnkeAVUVlu+ibuBT87sZSonD1R+tvlK7tWfyYvtPi857H7+9hk3Xy1/cHQfh0E61NBKhBuX1brz6sWFMZzsDsNK9EEQp9h7M1ieuis18J3eoF7TRRvrz0MRfX4SS88q1JOo//HzjYWu5jsXcf6o+dJgFYa78DlDKIZy3b3Z0mIlJNxEv1OH5nWksck5+lPlG7JPzJSSjCCQBp4F2L6obyysx2QXCm5hG8AmckR7d41XC3LCMYaJA0DalkWM8RXWwkzqL0FQDztUMHicjM1mktJCx+wip70PK3d++C8Ogns0Ld+nWwhDGuafELY0VF4Vj9qTTaIT/og21hdKj+Ucs44yErhjUnbGBnW7zNYRja1CsdgB6pza834BgesE1w4Ham1ItXNCQk54foaJ/UBAXbF/Fgmwd5GM/lVOfxZqMdRu
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /RNnUSqM7RcNl+wO43+OgGhgG+TY0zzfEcCmmAwqp8OtfM20FJILf60Lc1ybb6HTSqiM6hje2Lw8hin3DuAGJ3wNWnJ5+qYAONlXaBVOvVFRgKsJQOAivV/ew2l0n5Ce9qn/ZyRh0mA48oss7gFOhbJvQ91qKPBu4/2UCh9Ko8D9qKMX1954wKa0iwB0cFpgyNPcwrLpwjo286SEZY+GOHLDrolpI8IWYr5LH9ZwwvavMkFyzRQr95nkA5t79BRVRfpPJ6ZE5QNfH5ccy4UrNDizAZ7Yn9o1GhegV0PKSyzhDohKBVbXC/hug8QeN50M3311mY6cPFOj/qgcBUKj5uoLV9dn7Wb5RwG7AcaufHc8BiR6YSROK954GvJtPPFzN2sI1aX/twpEpRuBZQnhEe14yfnobZ4Xnb6t/nDDYCrLEM4qLBPuRnzhoQlQX9c14y9GtMxDFK1AqkOJL4hhYMJdkYQWCtMTxqL4w+4mCYYa4AnIp5Xr9k532LgjCrfv6caGKbhMh6QdhpYoMJQFFyLVzWrAYUMVbN2FWxMBPpuzTy5plGy1K7VrKYkuE7MCOFKA2sUKROuOiMJVeQgsGD/a0jjUMAwwwU5UHBhoG6g=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SElEbFVnYUNXaEp3ZlFOZVRKOTd4K1JKL2lHMEpmR1B2K2dySVdnY256OFBV?=
 =?utf-8?B?T0hUcVp3SkxYVG52NXlSZWx6Vi9mZTdFUVBIa1hETG5ac2huNzFqUXpaeWJz?=
 =?utf-8?B?b0g5Mm9EY2l3MzgxTTh6WHo1OXpjdSs2Q1JXWHBKQk8xaTFXTDdhUFJXWDBW?=
 =?utf-8?B?Sk1KRExEQWRML2pJbUZ5aGU2RTZxSFoyU24rNU9QZFlCY0NUa3lzc3pQekl0?=
 =?utf-8?B?ZHdhTzA3a3FsK2c2d0lTY3QrSGpmV05reXc5TXYvNUxtNzNhSmtjemNja0dI?=
 =?utf-8?B?dmhOMUNuVFIxa1loMVpaeTVpTWo3SUdpWHlRU1RYK0Y4cWZDS1pzOHd5bXFI?=
 =?utf-8?B?SXF6VVJFa1pFbFBiOGdZU21JTUg3RGxHMGZCVXNmM2E0UWZMYmpFM3dCSHQx?=
 =?utf-8?B?TWZaQnRJMU1MbFdNS3JjZ3pvZ041d1dnMGhRbHg2cmcxTm9TS2s3V09naTcx?=
 =?utf-8?B?alMxWHcyR3lVSmNCWkVVdlBXN0ZkS3R3M2xNem5tQWkrb3Y4cGtacjJ2U3ZE?=
 =?utf-8?B?YXZuT09oYnNhT1VtYldiM0dOQnNGaTBpaXIwNE1MUE83V1hwdHJrVjJyNHZB?=
 =?utf-8?B?eFc0MEp3MFVqZlAxaHZ3eThlVXNhbWt4R3dLRVBvRk9QWXBaOUNEcFYrSU1K?=
 =?utf-8?B?NWtlYVV0MFdvWTNDLzB4UDkvQmQwdFJCMTJERCtncGFTYzJrOWVyYWFnWXlG?=
 =?utf-8?B?aFBjSkdicTF5NFFmcE9WUjRBVUxwTEVCcGd6Y2M4VkZaY3F4bEdZN1FjVWVr?=
 =?utf-8?B?Q0lGanNRZDc4OUczY0dYdVRvdWFmTktpT05ZRjJmem9SZUNDTmZPYVVTeGJr?=
 =?utf-8?B?UmdCNmo3N3haYjB6VEJrRmlrMTM5Z0VEKzRFbU5QTjVGRDIrZDJMRUh4Q1Uw?=
 =?utf-8?B?OWszdExRQmNURFlwV0xVTUdZRDlkTUpVZlRIL2NkRU1QREthQlJMNTJyUkJR?=
 =?utf-8?B?cFNqVy9EekhQMHNNai85Y2R5d1d3UFdRUXFKZDFsOW9Rd0tNYi9CTmFFeDVC?=
 =?utf-8?B?SEVxNUVHcFN0S1FLRG05YWVSQ3JnK2JHSjJhclVsR2MvYVFCc3FwN1MraUp5?=
 =?utf-8?B?ZmNnWVNHNlM2Tlg2SkhxMWxyaEZIYm1XZ3U3TW1UbFFVWldyVUw3QWZKK1h4?=
 =?utf-8?B?K2lJR0dZamFZQzhsMkhKaXRSQTlydDZvV1hTUW95YUtwQ0FoajBrTXorcWZQ?=
 =?utf-8?B?QTJaZWVUMDY1bmRmbHgyaHk0MURST2xmd0piNHJ0SW5ZSzBoODk4bVM4a2Q2?=
 =?utf-8?B?aEYrTDJlYm1kaHhDMk1EU1BoWEE2TXhMb2JlNzhBamFSZmRVWS84NlNuVTFx?=
 =?utf-8?B?SHAwWGhoYWw0UGxsU1RtM3RKUm1Wd3ZqdHhyT0RVT1lZaGRMRXlwcSszbFpB?=
 =?utf-8?B?NTN3aW5KYW9IQVFqblVkQTFQdXg0MkFnNmdDZVpMMzNlY1czZlhRcDlZSHlK?=
 =?utf-8?B?MXFBZm9aY2lqeWwvdkpYeFJMdDBjQ1l2T2FTais2ajhMMFBXMHo0Q3luNE43?=
 =?utf-8?B?QWNQTGRPZE5hKzZwckd5YlJHaVdLdHh0M0JlWUR3SWVyZ0Q1bTlHM2Fqd1Ri?=
 =?utf-8?B?dDRUVDdoUU02MTRzdXdONUJjeFoyTHovUjVacFF0ZlZIWjVQRGhpdGFjUGZY?=
 =?utf-8?B?VUtQVEdHR1JaUWFzR0l5U1ZTK01SZGc9PQ==?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-cc4c0.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 876e9b7f-21df-4123-3678-08dc1e632ccc
X-MS-Exchange-CrossTenant-AuthSource: MW4PR17MB4274.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2024 11:37:28.4379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR17MB3832
X-Mailman-Approved-At: Fri, 26 Jan 2024 16:20:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hotmail.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R+sfOIFOK7iIf0+clwxO48d7/e5n9a2qn/jwgZvB3jI=;
 b=XhHqjSPb3psuDxYNtzxgYGex8dQXZyLP2Rh9K4H6PxkUgTbC3LIQwNKuPdSryJBRRXU6ps5jo8SuDs2gyYpE+u5FQXUqMG4OyR/AG7WBaC39lRYFXbXIFWjA3hR98UDhR8ACu1WgtYjT4P2BhXp3n3YW7ItvTcTuOhsz7JP2V0FRVL8YfL0NxpJOJ0H2knuiDkBZR3lGkPoon1AmSxs/Xn9Qsmlw7k0hBus+ZjxdU+E5G6Ent37twdW1OgcrWbiT3eIoQs/zyOJuIO25lHfm+qC5kP3L5PtNjN4s7c6JOL6rCKtROkoGXr5TPMYIu5BdH14PIvRITnHziwKX/l8e/g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256
 header.s=selector1 header.b=XhHqjSPb
Subject: [Intel-wired-lan] I225-V (rev 03) LOM + Linux kernel 6.7.0 power
 save issues
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
Cc: "=?utf-8?Q?intel-wired-lan=40lists.osuosl.org?="
 <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--65b39964_56e44cdf_23a607
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi,

This was tested on a recently assembled Asus X670E-E ROG Gaming Wifi motherboard running a standard Arch linux install - "Linux r912 6.7.0-arch3-1 #1 SMP PREEMPT_DYNAMIC Sat, 13 Jan 2024 14:37:14 +0000 x86_64 GNU/Linux."
The NIC will only connect at 100 Mbit, forcing 1000 logs "igc 0000:0a:00.0 eno1: Force mode currently not supported".
When Gnome / kernel attempt to power save to standby, it logs "igc: Failed to read reg 0xc030!" and proceeds to hang the machine for about 5 minutes, post which it resets back to GDM login.
After discussing the symptoms on IRC, it was suggested to drop an email to the igc driver maintainer.

Some notes and logs at - https://gist.github.com/Strykar/c78c292ca0a8ef942af846a1272a044e
The issue persists even on kernel 6.7.1

Is this a known issue?
Best,
Avi

--65b39964_56e44cdf_23a607
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"><d=
iv>Hi,</div><br><div>This was tested on a recently assembled Asus X670E-E R=
OG Gaming Wifi motherboard running a standard Arch linux install - &quot;Li=
nux r912 6.7.0-arch3-1 #1 SMP PREEMPT_DYNAMIC Sat, 13 Jan 2024 14:37:14 +00=
00 x86_64 GNU/Linux.&quot;</div><br><div>The NIC will only connect at 100 M=
bit, forcing 1000 logs &quot;igc 0000:0a:00.0 eno1: Force mode currently no=
t supported&quot;.</div><br><div>When Gnome / kernel attempt to power save =
to standby, it logs &quot;igc: Failed to read reg 0xc030!&quot; and proceed=
s to hang the machine for about 5 minutes, post which it resets back to GDM=
 login.</div><div>After discussing the symptoms on IRC, it was suggested to=
 drop an email to the igc driver maintainer.</div><br><div>Some notes and l=
ogs at - https://gist.github.com/Strykar/c78c292ca0a8ef942af846a1272a044e</=
div><div>The issue persists even on kernel 6.7.1</div><br><div>Is this a kn=
own issue?</div><br><div>Best,</div><div>Avi</div>=

--65b39964_56e44cdf_23a607--
