Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 161D7B01A78
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 13:22:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1DB96088B;
	Fri, 11 Jul 2025 11:22:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WJE4b40RobwT; Fri, 11 Jul 2025 11:22:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 225ED60A9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752232957;
	bh=6qy8YY8pS9R+DGYcf5OWnvUxelhVE6wDX2GBb0KFDXc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=72fCnlblFtLDbh057okse4ijtfAAvjaLqGSanrl47C/oeD75FObkn6IIchTFG67Fr
	 GHHCOIo0w9xxrPc/AoE+IDDs1Vb2aerWlZ0D1YcHVjVP0vtg3vwxkFY4tvbIcwbM/a
	 Q0PPmf4sRI0ngTg1bxjQV9XEJi13LT0M5e81Ap/AjzZCHuw1rnobHJ/TY6bxMQy7E1
	 P7GOyVI6fLNIBT/xOXENdDIT/2qvKVJqblszPKSX0dSXMB25mbn/qRacHDPB5gxzRv
	 ufB+1nKViwFQ5wFa22qCDJdPPpTmoBEs+D+IFjMTgc9iSc6p2HMDRElHTA9kzEXNy2
	 y+ARDUVV/5Bmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 225ED60A9A;
	Fri, 11 Jul 2025 11:22:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2560C1E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 11:22:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1700480972
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 11:22:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4KzrHMR1TVtS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 11:22:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.159.4;
 helo=osppr02cu001.outbound.protection.outlook.com;
 envelope-from=malin.jonsson@est.tech; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 237FE808C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 237FE808C6
Received: from OSPPR02CU001.outbound.protection.outlook.com
 (mail-norwayeastazon11013004.outbound.protection.outlook.com [40.107.159.4])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 237FE808C6
 for <intel-wired-lan@osuosl.org>; Fri, 11 Jul 2025 11:22:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RZBmE8FpJ9WLhoqK+/1Av4+7r2k9IuB0AdsuDqrapweq5nsD+qaGOF5F/ZsOT/34KaleixnC/8/EcDC4Pr6TT0G0AzNpfkJHQBYg5m8GagDHtVPpQvfJtTTkM4f7T/BF0J4m8lQK2GQmDfIYKfw9nOORjxzd1Hkpp/0GTQ0IczNwwx9Ww5Bt9vsgdIYQLBcK/Cjd7TYH0MI035wYnNUP5ZSR54eQHrZU5rX0EFXAmwRd3RdVnlL3RdNStU8DclNTfVYhOWI9n0aIEBmJDopb1QiVaTHgkb6tkdFBn8hIv4C+sOM4My9QMwWM6P+fVQUNqLWqhyUvKoULQGuWOEaccA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6qy8YY8pS9R+DGYcf5OWnvUxelhVE6wDX2GBb0KFDXc=;
 b=NQTW+c5bFOyyCwvTU6sJisc63L/VRNB8qSSkVcCkBRZHxZNKCVWYRheItzDlFex/UDg4Gey/xWqz6wq/39+64FT3Jx0QFvxfHKNPbenICThlfkatdJVE/mn/pkFY/X8j/VnEe3oLfBdxGCWBDOeMnSxIkHAAM9HDaOVPmNdVDqVOdvDVU9sUKWNj42TzCftG7O1NkD1P6jzg5UEjnyTLZkcgOkzrJC6NUFQYA9RFn/pS3mJ7PfDg1uyc7SWp0lSNFkTiV8+wBb9YrbUcN3HwLWg77maLYyr5QWsxTRyPd18z4rhrCtfLLf/BMnOmjpFPyYIFlOxXEyxjrb7lhCNsfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from VI1P189MB2600.EURP189.PROD.OUTLOOK.COM (2603:10a6:800:1cc::20)
 by AMBP189MB3339.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:6ab::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.24; Fri, 11 Jul
 2025 11:22:31 +0000
Received: from VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
 ([fe80::98aa:f3d1:82ee:22c2]) by VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
 ([fe80::98aa:f3d1:82ee:22c2%3]) with mapi id 15.20.8901.028; Fri, 11 Jul 2025
 11:22:31 +0000
Date: Fri, 11 Jul 2025 13:22:28 +0200
From: Malin Jonsson <malin.jonsson@est.tech>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: yong.g.gu@ericsson.com, roland.kovacs@est.tech, intel-wired-lan@osuosl.org
Message-ID: <aHDz9HlDV-B7enCH@jotunheim>
References: <20250711064746.649332-1-malin.jonsson@est.tech>
 <f6027166-2ab1-4221-9636-7ed40f1865d3@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6027166-2ab1-4221-9636-7ed40f1865d3@intel.com>
X-ClientProxiedBy: DB3PR06CA0001.eurprd06.prod.outlook.com (2603:10a6:8:1::14)
 To VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:800:1cc::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1P189MB2600:EE_|AMBP189MB3339:EE_
X-MS-Office365-Filtering-Correlation-Id: f98b6a3a-8718-418e-cf8e-08ddc06d39a2
X-LD-Processed: d2585e63-66b9-44b6-a76e-4f4b217d97fd,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tu0FR5MkoFE6F2tKVjnn9HPhCB0+03b5xjxXdJFE6peLnwGJl/94y57o8PXd?=
 =?us-ascii?Q?maVOVEbd5TqyiHhLz/bbOtnx47yV+Vj1s6TPEAmIyTW+IahZRRjaT/+P3tGz?=
 =?us-ascii?Q?T90UQpbqXU9sTKIJXX+9KD+UD1BgSIrDxEOIufpttYjDlxL1H89H9Le4OIlX?=
 =?us-ascii?Q?62TRDZZ2dIbYuGYUpio5D7A2MUQdV0wgIIh0IVHICqXp1bsViqXDN7oqw3kv?=
 =?us-ascii?Q?7AMIPNgkcWbf6DhgOc3YvypwYB0gP0YDzn4Ju4D8D9pUSCJGMG2uPYjzqN0j?=
 =?us-ascii?Q?VNaz/9MKxF+DfjQJv8vxjaE6sAlzlAoR0McCMeRCsXmvvGxS3NzdGobl1Rhk?=
 =?us-ascii?Q?30baZRY2f61epzV6lMI3WCYp6HDB5EKxdFBF1wfqgzLDPy0MwkxH9rZkqkze?=
 =?us-ascii?Q?OfEi2MnrKvPgQikPCDZywvxLhdgdROkJNLgKulLHKxgDqqkoruocOe6ut16Q?=
 =?us-ascii?Q?CQOXI44qbc9RLN7bf18uTqQs9Pac6aiwFjocdy4adamOH5yY0k4AzyxBUwfP?=
 =?us-ascii?Q?DSXnWgTIXGQ1s3son1Xp+K30ErelkHdYOqI7hn9OVlVufDLqpe9epUaeWgXa?=
 =?us-ascii?Q?I2Dg73clMYMqwhyNFhytzsuBBWOw5woBWt56SvFIpQ/cwvKtPvlvMdrZKbPo?=
 =?us-ascii?Q?kyPo+ZWFc/OgPkdvQ5b4JEQY4b8U1g65j9XxezRJ2tAl2LqSzXADUIxVCi3D?=
 =?us-ascii?Q?CmKZid0IoTcvIpS7t0CVx8pHYbIArXZqKkzmtZm3m5usqSN4WyqnG++1jhSl?=
 =?us-ascii?Q?3bGCDBrSt1QeWQIEhGEukeNHy4z36+fvu7efP8TJqYuzAvqO2ng4CNbYEIqP?=
 =?us-ascii?Q?I/374g72OQqqfo3LrBrD/bGTIiqL+dwkAw/rtu/gAyKyRkAPTQBbLXaCRhkX?=
 =?us-ascii?Q?Dc+iwTsr2yoWutF84sdihqrHlIlnJmdo+62t3V1jSp9hutuz4hSps+dTj+bs?=
 =?us-ascii?Q?iba8mWWEBCT3ED0WejpwA57CU3pRSA9oc03WaJsSp1i6T+izDrQzYrS8wySn?=
 =?us-ascii?Q?LDm5l17P7KlJWGmlHjkNkvfVaYsa8sX+MYgyxd/G6nMZkv9YSqypR9nblXo3?=
 =?us-ascii?Q?YMwmtS/sxnO1kDA2srCEtx+4x4S9hVbWXg9n9Q4H2Y1l3udbOKI1cWsa89Bb?=
 =?us-ascii?Q?C6x5HPtF/FMKENVDXZYcYIWjrpsyuwRWWHT8+Zv3ManHfZn/m4sjqZVp6pbL?=
 =?us-ascii?Q?gDow8LXJz27nRZdaLvsg/kM0w6iA7J3AzBELMlOR0bSXH5N3FCTKSBIV+EVm?=
 =?us-ascii?Q?rzidC/hLRHUTW46yNOOsGk50YhzNi0pc/j58uyPXZQqVwy3qCn+HZsi35rY7?=
 =?us-ascii?Q?NPZlZyn1YlI+ipXXDVq+tpzcUAxN1Ry77UKp6wAC7LlcB+LsinJPqYQCzLlB?=
 =?us-ascii?Q?Nf4y9uAAREnv8TA4kWPwbdYoscdtHwvZ3iza+0Hvjcjd/INrEA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1P189MB2600.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4lmo9AY5auSBNaf9G3SU2BTNS9aP8BaCBsBItOng28Xhm4KyunAsfdQY1kD5?=
 =?us-ascii?Q?VsaxS50pWktMdxRr9jLrY7Fcrj2MW6GvqjNTbd3zi0NzKJLWqIAc2hTD+29l?=
 =?us-ascii?Q?5kap7mR+l8YWME8uNt1nSKTtzcOXa8z2uQmetD0gAa2HiX2KzdlCFJmBFLAz?=
 =?us-ascii?Q?HIW30bF+vkTdTBCIf3ZGBs7PCixBwNAUSTn795akljzqisfQQRrrILImF2p4?=
 =?us-ascii?Q?fmCdER7AKdoLCR5g5ymp9ult6jgh7NwUV5b/xUWC/F3BDe24HU92tyRrXH80?=
 =?us-ascii?Q?apvy80Vbq48htFnGoTsJ9BNiLhaGBaloz2VKfUXE1UFoPCtiUa3vMivv34m+?=
 =?us-ascii?Q?CEgyhdkkxJTQx4aEJwpum4Hgl6iX6eet9qw8oisOPypYFQy6MDNdVGFR6M1i?=
 =?us-ascii?Q?+m4VwTn1uP36vVF4ZYfX3o70Xo1bTzxXgtPfcwSaFcShvDgI1ho5yyOrlyZB?=
 =?us-ascii?Q?nrvy0zLZR6s43wkhszqAsGTXVJXanRW+3rQ6mKtImijR1kpsQq6ka9NDxNDb?=
 =?us-ascii?Q?ZSr61regTTP7XSsrI5P+XdU0RnWVhceR+zc2bgNotLWRPS4RWXMKTdgd85T0?=
 =?us-ascii?Q?QQs5OXKu5jdXkDhrWYMR6A1CKFqlb/8wBFu34JpFE7LXgfm9i+W5W+b6nhW+?=
 =?us-ascii?Q?zOoYQj+injvuj/C7wpzVThvTd2dqTJ6VIpG5ukTUmRXl5Ivx71QVOj75XEv5?=
 =?us-ascii?Q?vJ1MXgy6e/Z3DYVMwfEPOf6VtlLd9iq6KxEiI7Yk9zMJd1HD2/byostaiuEu?=
 =?us-ascii?Q?YXhNuDQouKpekF0CPVEM+Ww7gdx/1JKVeMf2pfXq41bl+UCtWPfWEStVAGHp?=
 =?us-ascii?Q?iFB2yrcpTdvapgQ1C1/E9DZxhiWBntxC+mOFpU2E1Rptg0DcJsa9Vuxk9/7B?=
 =?us-ascii?Q?dEUtEh7l2JKjIr7mFuPrjPVthtg1G7OCJnTkbiIOXMRiGRIO5PpasIeJ9US1?=
 =?us-ascii?Q?u2Ma0U+SiF7/TsZeJG1MTG2g2TyZuG8/hWarTz273i6UllBmrzzX/Y2j+EvW?=
 =?us-ascii?Q?Rx6v79FhIAdpRJR/fvS+ZiamyjOT+TYVaqppFUSSXhrRJjAD8SVL2nVpTsJP?=
 =?us-ascii?Q?Gbfdae6EpqKh5Pi0vulkFcnXRw39/4ghsBlsreMWLXpsfFH4MITIWsU9GTUx?=
 =?us-ascii?Q?yM6ZvuUc8eoRG1VlLBfXFVhqySH1RZEnPPvu9YhVeerrrzX5PKnQBMv1OPEy?=
 =?us-ascii?Q?Of64qL8NHBZbwoIW91d6fZA5qMS5bs2/kn6JVCSjb7g8ZC5eTJWEFoZmuXbY?=
 =?us-ascii?Q?z83uDEGTV8KPWPiNzRZ2+juwlrS81o9fxUFxixLBcZoq9BV/xeIDjmFLQDyC?=
 =?us-ascii?Q?mV1GcWistELNvw5gIpYL8U4+oWgKbLErCfh7ZhElW2wfJYp2kCO+k9dgS5kV?=
 =?us-ascii?Q?niSl+yd7Qr1uAb+5D32TaubJgJl0rgAtItmoeRn+3KwNy2dC+RSCPRJLP6bV?=
 =?us-ascii?Q?pEbT2uX7Kum4c2PShzCUdcdt01coMlLcKvZ/kJC9YoEU0dGLw4vOwpFkmwyh?=
 =?us-ascii?Q?LzInj0ry8zcIABCzO3hMh8XHOJ6U3LPOr6SiVmGY81F6WZTQ8i/02wRdq9qj?=
 =?us-ascii?Q?/qjKKVXfBHBwWNJP7+ijmIBuvXBdfWAlW58vIp64x/XCr9eG8V4NYkwRhUPJ?=
 =?us-ascii?Q?3AvyJvS3iLD4bmA+Zl9z9fVlRFebXf9l1KKJ8tW+YY9cRwx84eAZMgkryT8G?=
 =?us-ascii?Q?w/nPZw=3D=3D?=
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: f98b6a3a-8718-418e-cf8e-08ddc06d39a2
X-MS-Exchange-CrossTenant-AuthSource: VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 11:22:30.8871 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HuhXFLoKD4oOJ+WqopABkZ4ZaWR+KdtArdPKwob+eSt9JKQMC7DyngzWF920pNzEvhNnZNk3uP1XXmPNU6fSmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMBP189MB3339
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=est.tech; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6qy8YY8pS9R+DGYcf5OWnvUxelhVE6wDX2GBb0KFDXc=;
 b=KKjL2mJF59zwf4Uf1p/EPJUhTNIlg4Krem3NMmYyZnk9Ya/NQJz+S7vfzEM34iQgl+W6CxXpabSiKo+Dp934KZG+h4W29b7nAVGT0VGrfXZeOe9oWOHWoS9Ht480S7oaMu7dgPJFVpQTiKSeQQJL9DRyGkajnY7Ubyydrbt/GBXb3af4z88Pl0MhYjGtVPt+Zq29Pnl4f/QT9xiErB5nIp+GxdErXgmRZ0vZCcxaDVpZFufLcC+x7QAcJS2dZ165SLRel98RT5h9q3p7oWiODkHV4Ac2wyaIfxDJ0mPF+4OtgIVrq00KkRFfAgU1tpaZqLSF3Q+ScfqzLg/8/Kh9bw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=est.tech
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=est.tech header.i=@est.tech header.a=rsa-sha256
 header.s=selector1 header.b=KKjL2mJF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: Re: [Intel-wired-lan] [PATCH 1/1] idpf: Add missing dependencies
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On fre, 11 jul 2025, Przemek Kitszel wrote:

> On 7/11/25 08:47, Malin Jonsson wrote:
> > The idpf driver depends on both AUXILIARY_BUS and NET_DEVLINK, but
> > they're not selected by the Kconfig. Let's fix this so idpf builds even
> > with a stripped config.
> > 
> > Reported-by: Yong Gu <yong.g.gu@ericsson.com>
> > Signed-off-by: Malin Jonsson <malin.jonsson@est.tech>
> 
> Thank you for the fix!

My pleasure!

> if you have a Link to the public report, please add it as a Closes: tag

There is no public report that I'm aware of.

> 
> Would be also great to add a Fixes: tag with the commit that introduces
> the need for given dependency/ies

I can do that.

> (there should be one tag only (per your commit), if both deps were
> introduced by the very same pull request, just use the earlier commit)
> 
> > ---
> >   drivers/net/ethernet/intel/idpf/Kconfig | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
> > index 1f893221e2c99..5c7ce626aae16 100644
> > --- a/drivers/net/ethernet/intel/idpf/Kconfig
> > +++ b/drivers/net/ethernet/intel/idpf/Kconfig
> > @@ -8,6 +8,8 @@ config IDPF
> >   	select LIBETH
> >   	select LIBETH_CP
> >   	select LIBETH_IRQ
> > +	select AUXILIARY_BUS
> > +	select NET_DEVLINK
> 
> looks good, but please notice that we keep this list sorted

Thanks! I will fix this and resubmit.
> 
> >   	help
> >   	  This driver supports Intel(R) Infrastructure Data Path Function
> >   	  devices.
> 
> 
> 
