Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2BC7308A8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 21:44:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F36EA41DA0;
	Wed, 14 Jun 2023 19:44:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F36EA41DA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686771878;
	bh=rxVzBOzf5VpsVKXKW6mD7WavKkgU6NMiw4mwnXp9za4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LqsqLfVWtjP+PJrGn27Ib1UflaetC41QMNtWiH5CqBlmcOkjUoV1IjaACVTnQkVzw
	 Rjm4zPe0fEkQqfSFD/RNaitX3tS2vpvFJiyPSnU3qCZO5Sg5GUL7Bo5QRjbtmreFNZ
	 S6UJpgSiyeillb6ZOZwfnruL+xCveDyaq8+yJ21pSh09FX/fv2bSIGDjDavx72NBVL
	 zJ83nR/kw9NpYIoIMseGRTK7/cHE+CQRMWib+s1es31pTzMEzkheeeCAZpFOFmjkDi
	 4T9jWPkJnWfGQDDGPZzQGh1VUeCvmpTos0CVkT3UKFmIfx1yhmeseMbJh0iujuweC5
	 1fMkTmlpInAeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X2x1WMTSFlOe; Wed, 14 Jun 2023 19:44:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C7AC41900;
	Wed, 14 Jun 2023 19:44:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C7AC41900
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4B071BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 19:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9E0481E58
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 19:44:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9E0481E58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6PdydrLLMrp8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 19:44:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D40D881E56
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2139.outbound.protection.outlook.com [40.107.96.139])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D40D881E56
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 19:44:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aI/Wfc9qYrdUKk/Y5lMKhkHX5yBIcrGHDo9KbJcd+Oua9WV7CBqdZDJbNIEa5HQzUQFpUET0UCUtjMfgDg9cMiEoriXq1S2AMfXkqtek85z/VmsQ8FWN+yuVb2svGQy5ax4CczykuxTpEfYcj5S+767eQ5NegnMhyTHC5Z86Yy/CHkri6sMPzkwhFlEASB+rpK9DcynIBDNS7ijdIC3EbGiowF20dhOFWV5oduN8HxLDjK/PsPvouVKidgITMV2XJCugwRRp8POR19jlKFqxEDZzxnr+Grna0K2f4igvxkp6G7+1pEhIDf2HR3Lh3Xm81b6+w1KT+hAqnHHhmUFwwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5nF6lAbUUXqoqAVLDg90FLJru/bdYK0h//T+tAggTYE=;
 b=Evrkkzjb1IZUHPfKx3prN+4DlBlU9VJlJRe25GrVfj0HAcz2+ocSYJKwPKrSPGI0sr1Iolu+cAoc4WMFwavdnHC/nwZP8tjQnMJhNLzAhri/Nc+xvYw5uDYVBTRmsT4KTbZ849jKN0y9YzgSgQVcO2i1NxUOP2CtMt1Gjo4KQo2oYpr6uFwKhEvMjuRinSERxKGUfjcCP8HIMkEQx/9CBH3Uf6yVvlZpNBq9TTGvUOBiKZpEQadRuLgv1GOC+aDimEEWkcLG24IFcGIT8A8hnZjRTySsZXr4Nq/i7SutkRg3H84dp8nb/4QfLcaAAHeJdEIuRh5OoKzKY8ndzF+8Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB3830.namprd13.prod.outlook.com (2603:10b6:610:9e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Wed, 14 Jun
 2023 19:44:27 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6477.028; Wed, 14 Jun 2023
 19:44:27 +0000
Date: Wed, 14 Jun 2023 21:44:21 +0200
From: Simon Horman <simon.horman@corigine.com>
To: "Ertman, David M" <david.m.ertman@intel.com>
Message-ID: <ZIoYlZzmK7oR/E7h@corigine.com>
References: <20230609211626.621968-1-david.m.ertman@intel.com>
 <20230609211626.621968-3-david.m.ertman@intel.com>
 <ZImh4NunKEpay3zu@corigine.com>
 <MW5PR11MB5811EF2458CF3AC2A083C64CDD5AA@MW5PR11MB5811.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <MW5PR11MB5811EF2458CF3AC2A083C64CDD5AA@MW5PR11MB5811.namprd11.prod.outlook.com>
X-ClientProxiedBy: AM0PR02CA0186.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::23) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB3830:EE_
X-MS-Office365-Filtering-Correlation-Id: 3eae88cf-19c2-46ff-1e4d-08db6d0fc363
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1Saibx9TfaOuAnmyyU0qxQGNvZQLiJM1MModrab4X1qf0PjJOjFklirvHYZZmfSXIz8dBzvpghDDuSoqFQ2zNGSUHWyIblNKK3H/HPOL5FFj4AY25xYU7CKKHw4qo2gjLVJ0ucr8WDu02Ca0pg5saJvrUq7DnvvDjCvANkjeBp1+c+AMA3Z8L46oXQiyHZ1Ksq+dddS2egJgkV8U46TTk2baaN4w63tVn3VE6t/9EOeZpX+ftPIgpwPvomWpwvqlvuJ3vvctkqLqMxUeL3jjHtUDT6lkZVrCKR2VEFlk2NktZJguXolgKs029EeG34RT1Iew+nZDNjGYhPF/h/+74hQJkresEEV+0bLlY3hLwVVO6XRuuS9XmUAn0jdPSKNx9n7vbEcM60tWuFE3gXn6uiRoXsz69d1vws6aQAdn/XsmTa2Yw5ODkErRGOr4IU9MVzvrSUZtxpBH5tFFMjJlxOyLeu0YPM/GLAcnE/CSQoDOgi4QBPnydDDRoiVOaaHs1y8L+6JUYuc9jlzOcTbLJINC+I/+RgHM9b0ChHYa5+3KD727E2HosT0IoRG77Ydwrp6BgpvAoRtboWvkIG81IlNXubApmw6yNC6vXbQ5qF0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(376002)(346002)(39840400004)(366004)(451199021)(6916009)(66946007)(66556008)(4326008)(36756003)(186003)(54906003)(478600001)(2616005)(2906002)(66476007)(8676002)(6666004)(316002)(41300700001)(86362001)(6486002)(6506007)(53546011)(8936002)(44832011)(83380400001)(5660300002)(38100700002)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajF4T2xVdm56RTFVYkdTWUMxOWlPS3E1Yk5LTXV4YWtTTVlFS1JQMFdlUHZM?=
 =?utf-8?B?aFhlOHZuR3pRT0hlcDlXSi9LeDJvcmRlTXVsbSs5RHZHWE5XbUZOTUEwVjd0?=
 =?utf-8?B?d00yYlJab2tXTFRjRHg4T2FzallUWlRjMGxGNlM0Um9wY3pmU0FLeEhUNlpO?=
 =?utf-8?B?NUhKdG9wRmdxaFFDUnplTkRNcVlpTDdIeWZqQ3IyWXVXRldLVXBDOFBPQzhr?=
 =?utf-8?B?ZURIRTJMS2gwTU9FNzNvYnY1UWFZWmVmVHpsTk5YNjZFYVcwTFA4V3M5Vm1T?=
 =?utf-8?B?dzg3cmdMWmo4U3gvOHFKajRHOFYvQ2tPc2VQQkp1R2tqR2hrdjBBK29SVFpJ?=
 =?utf-8?B?TkFJa0ZMUnd3Z2pVVS9uaDJCbXNQOFEzcGhoTUJla2R1ZmoremkzV2d6QUN6?=
 =?utf-8?B?T2xPOEFaRmdMY1pMK0JBOG1lVUgvZkNVY2R6VHA3TnllSjcwLzdqbmJJUmRw?=
 =?utf-8?B?WEo2VG9iYUhtRm5EOTZaL2JOUUhNWFljY2h3aEpjbzNSQnlJMVQ5ZjZLbkpw?=
 =?utf-8?B?WGlDd3J2Y1M2TjdvNCtTTDVaRmdIVlZpeVVVSG1icmVBOTBEU29hV002UDRu?=
 =?utf-8?B?K21ub2VBenE3bER4TEwwU1NBcFl5OUI0VWt1bVZIMmVXemdtWld0Rzg2bnlO?=
 =?utf-8?B?clRzUUc2VnZRS3h0KzJKWGw0MGVqa1dSK2lGQlBtZnNVMXFiWjJuMW0wd3d6?=
 =?utf-8?B?SUdYQWNHOGYwOXdQQTBEN2R6alJ2cHpJRUhNR3FIMlM1ME91RGNIMWphWk9I?=
 =?utf-8?B?RDJmNEdxcW1hUEdNSjZ6VEtrQXp5dmpUcjc1WlhjTDg2UjEzb29xV1VubkxW?=
 =?utf-8?B?SnhyMExwOHNkSGNXU2hvRUpmR3BQSGNjRzBUai9hRmw3T2NEb2JqWmtJTkph?=
 =?utf-8?B?OTNOaFdTZ1JZeWFZQlJodVdpMWFqRHhNZ09HelhtSlNvUFlaQW1VREhINmlO?=
 =?utf-8?B?T0VncjlpdVpvSkNuRW80Snl3cTI2MmtHcDFvQlN4S3pwWndnTVpkSlVaaDdq?=
 =?utf-8?B?Q1BuWi9UMDFJM2J2eHAwdXphVTV5L2VmempvZ1FzVmhhbVlJNHpHV1g0Y091?=
 =?utf-8?B?dERhVGRyQUt6cnZMVlN4LzJxeUlZWWhyclFVMU1POUVFdGFDU1RiaC9sS0oy?=
 =?utf-8?B?Y21meUZxTkNUSjgvV3dtVHovSE1TWjNXbVNXQkpmNXV3NCtlS1hXb3FBQ0lz?=
 =?utf-8?B?S0VxZ2ZlN1pxWlhkOFduTzFpSW5xZEYvWkdvUExhTjJuUVd0dDcyOUpKSElY?=
 =?utf-8?B?UWFMM3BMZFk2ampuVFBHSkx6L3dzY2JPa2w0RVRPWGVSbGxMV2VvZlQrditw?=
 =?utf-8?B?cWxvcTRkTDhOTi9sVmwvUllmOWZHWFpPTFZUbnllbTgxblR3QUFYa2lkREpP?=
 =?utf-8?B?VEtlSjYwS0I4S0JFd1g5NVBSQlFQWjdHU2NLTDcranhJck1CcFBXQkF3L3pi?=
 =?utf-8?B?dHpmd2tCR21GNW13VEVNUDQyVWl3UmR5Z2lvRktVRVZGUGEvZkdZdnBEaUlM?=
 =?utf-8?B?dWJuZFB2MXkxMVp2dGVyZTlvL3NVZE14aUcwWU1aT25NZ1lER2wzWkUrU3VR?=
 =?utf-8?B?My9MSXFZOU02K1hkWm8rcEd3eG5leUZuUHdMMjFVRi9ocDBDRGtxaHNad3dm?=
 =?utf-8?B?c1hyeEptb3dwc2tMUnoweDFuL01MVnZ6a0NibUVXcm1rYUJSMHZub2dhYzNl?=
 =?utf-8?B?eTV3SXdGUlFXYUZ6ODRKR1Z6Ti9mZXljczViYll2aXdlelZxclB3cjJCTUpQ?=
 =?utf-8?B?OGVXWTUyQ0Y4R1RXQU8ycjhnYnlFZ2ViZE9neVplZ2pWZk9nRGY1Y1BJTmRM?=
 =?utf-8?B?aElUZk9IWnJpSzZtb2ZMcS9sUGt1UXJHL0dLZzhwR0pZaFlNWHNBVnRRSXpW?=
 =?utf-8?B?RDZ4ZjVsSFRwZUtzdXNhMzl6WFg3MjBaMFpQWGJXcjlSYnl6cllJZHdyNEti?=
 =?utf-8?B?US9qS1BVcWpwb0pxNnM0bGd4bmF3S3hhd0d5NE9uQXNWNmRLNWF3QXcwWkM0?=
 =?utf-8?B?ek9SZWUwMXZmcVdXdGsrdy9uUWhoTXJGTHdqekRlQ0dDQU1DNlBvWkN6d1NT?=
 =?utf-8?B?c3lQTFRoTWd2cStrQkJQWXl6aEMvMmhqUWJZTVFkUjJkQVhUc3JkQWkwUlVj?=
 =?utf-8?B?VVI0eEhyN0wrZVVmZVhRdjhOcFk4dlJPb0NBcXl1akY2UHJQQ0dycnkvbnRs?=
 =?utf-8?B?OVdRU1dKK0VVNmxPeUt1QUdVQzNrbnBoMDJUMXg1bythSnkxQ2pGRUxyMlFH?=
 =?utf-8?B?ZG10dGxmb2FMWVhVL21Zb2d4VXBRPT0=?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eae88cf-19c2-46ff-1e4d-08db6d0fc363
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 19:44:27.4234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /CXidWWyqrLPbReeFhJ5x20qnAu3LAwHYHRo0+JBkMSKKGXiNeD+MHhJZ1PvMbraE6CY6sEBh31/aNzkcrXUVRSXBZ5vaX1HVsdKNXoh+i4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3830
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5nF6lAbUUXqoqAVLDg90FLJru/bdYK0h//T+tAggTYE=;
 b=pVnAMkpZGwd/aJTPns8Y2Q2r5FVJYxOP1H6fqbE7Qqjvioclp7KhjYBity5V1kiSKDbAy30i7z515fGbq1DskSHR76rrgvVpitcqL9E3ikZrKx9Mn2B+X5GggIKPSHY+EjYEIfghq4YZReWSkx5A1z1vjYihLWotDY02mzPSjOc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=pVnAMkpZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 02/10] ice: Add driver
 support for firmware changes for LAG
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKdW4gMTQsIDIwMjMgYXQgMDQ6NTY6NTNQTSArMDAwMCwgRXJ0bWFuLCBEYXZpZCBN
IHdyb3RlOgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IFNpbW9uIEhv
cm1hbiA8c2ltb24uaG9ybWFuQGNvcmlnaW5lLmNvbT4KPiA+IFNlbnQ6IFdlZG5lc2RheSwgSnVu
ZSAxNCwgMjAyMyA0OjE4IEFNCj4gPiBUbzogRXJ0bWFuLCBEYXZpZCBNIDxkYXZpZC5tLmVydG1h
bkBpbnRlbC5jb20+Cj4gPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IGRh
bmllbC5tYWNob25AbWljcm9jaGlwLmNvbTsKPiA+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKPiA+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggaXdsLW5leHQgdjQgMDIvMTBdIGljZTogQWRkIGRyaXZlciBz
dXBwb3J0IGZvciBmaXJtd2FyZQo+ID4gY2hhbmdlcyBmb3IgTEFHCj4gPiAKPiA+IE9uIEZyaSwg
SnVuIDA5LCAyMDIzIGF0IDAyOjE2OjE4UE0gLTA3MDAsIERhdmUgRXJ0bWFuIHdyb3RlOgo+ID4g
Cj4gPiAuLi4KPiA+IAo+ID4gSGkgRGF2ZSwKPiA+IAo+ID4gc29tZSBtaW5vciBmZWVkYmFjayBm
cm9tIG15IHNpZGUuCj4gPiAKPiA+ID4gQEAgLTU1NzYsMTAgKzU1NzksMTggQEAgc3RhdGljIGlu
dCBfX2luaXQgaWNlX21vZHVsZV9pbml0KHZvaWQpCj4gPiA+ICAJCXJldHVybiAtRU5PTUVNOwo+
ID4gPiAgCX0KPiA+ID4KPiA+ID4gKwlpY2VfbGFnX3dxID0gYWxsb2Nfb3JkZXJlZF93b3JrcXVl
dWUoImljZV9sYWdfd3EiLCAwKTsKPiA+ID4gKwlpZiAoIWljZV9sYWdfd3EpIHsKPiA+ID4gKwkJ
cHJfZXJyKCJGYWlsZWQgdG8gY3JlYXRlIExBRyB3b3JrcXVldWVcbiIpOwo+ID4gCj4gPiBJcyB0
aGUgYWxsb2NhdGlvbiBmYWlsdXJlIGFscmVhZHkgbG9nZ2VkIGJ5IGNvcmUgY29kZT8KPiA+IElm
IHNvLCBwZXJoYXBzIHRoaXMgaXMgdW5uZWNlc3Nhcnk/Cj4gCj4gSSBkbyBub3Qgc2VlIGFueSBt
ZXNzYWdpbmcgZnJvbSB0aGUgY29yZSwgc28gSSBzaG91bGQgcHJvYmFibHkgbGVhdmUgdGhpcyBo
ZXJlCj4gdW5sZXNzIHlvdSBjYW4gcG9pbnQgb3V0IHNvbWV0aGluZyBJIG1pc3NlZCDwn5iKCgpM
ZXQncyBrZWVwIGl0IDopCgouLi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
