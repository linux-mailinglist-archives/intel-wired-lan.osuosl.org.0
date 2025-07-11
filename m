Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 572B8B01E63
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 15:53:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 897CD60F13;
	Fri, 11 Jul 2025 13:53:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x2tezsVn5rEO; Fri, 11 Jul 2025 13:53:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5465610B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752242004;
	bh=Su1qXfqMB3IQIpWqir4+CBIP+5q736UcYpU/41d0RxE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fZf6QQ/cxHup5SWmvBJ3diOIjrb5a7VWrCZ3qcybhDD3Z9cLqY+QBG4ZqlZlmMND8
	 8UrZLYc5doSB9uAEiyL51s2XZ7c+mvmEqvMcYyrEYlDRtydJv5MH7M7Zn7uT64zeNo
	 FS8hVfSBqZCi9jhMclXCIakEIvCiDKS7I7xgpfYnjch9J1YKxxO/88tXvimG4uW+I3
	 B6S3GbSG6vo6T9wq9ey33magx48KGWWIy45MYD1ZR0EFZaR8GGm3+D+uoMBHxOcH3J
	 ZuM53JPm/0HZZAfvK3Phf45ZzyTlst1MAIfKjrCSChexgF2BkYsx6/aJBRSg0GAaPl
	 g+lWQqKg+8Jqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5465610B1;
	Fri, 11 Jul 2025 13:53:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2648C114
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 13:53:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1738480C84
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 13:53:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UY6jU2-mduCX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 13:53:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.130.29;
 helo=mrwpr03cu001.outbound.protection.outlook.com;
 envelope-from=malin.jonsson@est.tech; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 28D8580C80
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28D8580C80
Received: from MRWPR03CU001.outbound.protection.outlook.com
 (mail-francesouthazon11011029.outbound.protection.outlook.com
 [40.107.130.29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28D8580C80
 for <intel-wired-lan@osuosl.org>; Fri, 11 Jul 2025 13:53:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RIvmDm7NBZgtdw0bRSL5ilxuKJWKFsButCMzhqNQWnbS5CNd4EL0J2y1Xk12CCdb2ocFneoNfEqM6xWrtczwo9grp1MdASvXAA1QK1kvYGistwDggGBffZobUBCbjnuHnW6+SpS7nAK6m36GQNQEf3CbhWnajMGKn0PjcqL4HDjvlTinAOfGhILTiHI+P3RRbW1yFRg2XLZ+cV7krSjyahwt8AWCpi4fGQUH0KA7d3QUvOSPexyPl9vFMHPMGsrdLHUrIOeNr1n8AHrWexNwUEeXjcR9V3Ko2wBksbmR71fWBki2dmi4f9KCHKd/zIqJ1JH0oOBDmmqW9Zw9ydYlog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WPzT8wIGi6SWpor075k2NFFa1zcMX0+5PKjbNwr/NlA=;
 b=HfFWXmugwaainPDQ43tlAQF5slWIfaY3L2/3dfFs9rtWtztXq3fDFQZB6EsgMd6nkiiz7BftB4Cd/rjEVMpyvd+ZmOpspMZx78czLPGhJPWZTZ4u0QZVGWeavcSglaTkhD+tHKBRjnCiy3IXMNta753gdhR89joJ4rE08PZpqcNnZMLrByj6Wlz6izL26OQW4MNaMzJVIiyh4zfNlB/95Ltbm2kJZ4y6WDtpfZIanagfRrVdJhT9ghxdCajPpjHcWkooiPPBV6aE9up2mgyX7tTErpRaxpIvH2DSIVVljcVKQAC6tWY5bj9tkU6d+AnadIwnXVTBJgCeQDOxPwLjhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from VI1P189MB2600.EURP189.PROD.OUTLOOK.COM (2603:10a6:800:1cc::20)
 by AS8P189MB1301.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:28a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.24; Fri, 11 Jul
 2025 13:53:18 +0000
Received: from VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
 ([fe80::98aa:f3d1:82ee:22c2]) by VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
 ([fe80::98aa:f3d1:82ee:22c2%3]) with mapi id 15.20.8901.028; Fri, 11 Jul 2025
 13:53:18 +0000
Date: Fri, 11 Jul 2025 15:53:16 +0200
From: Malin Jonsson <malin.jonsson@est.tech>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: yong.g.gu@ericsson.com, roland.kovacs@est.tech,
 intel-wired-lan@osuosl.org, john.jacques@intel.com
Message-ID: <aHEXTOJAxnSdJoNU@jotunheim>
References: <20250711064746.649332-1-malin.jonsson@est.tech>
 <f6027166-2ab1-4221-9636-7ed40f1865d3@intel.com>
 <aHDz9HlDV-B7enCH@jotunheim>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aHDz9HlDV-B7enCH@jotunheim>
X-ClientProxiedBy: DU2PR04CA0059.eurprd04.prod.outlook.com
 (2603:10a6:10:234::34) To VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:800:1cc::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1P189MB2600:EE_|AS8P189MB1301:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e8021ac-e4b8-4a2a-ec83-08ddc0824a0e
X-LD-Processed: d2585e63-66b9-44b6-a76e-4f4b217d97fd,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|10070799003|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?2mUyHYn3M7mPjwuFxkj4t+X5C63tAxz2fYFplfxX5zJKYjevIC3s7fFUzK?=
 =?iso-8859-1?Q?77BC0XMYeAmWOWJSVaJ46qyVZqtRaFwWN/n6h2HeNaxZMysh/guo1B0LfQ?=
 =?iso-8859-1?Q?+2LBspgR4E2lL2eIN1OxOpMFoP9zXX4fL6SbJlVHiaZ3L9i8kDo3K/c4qv?=
 =?iso-8859-1?Q?ndgdAUEnoZTBteBx9p2jfqMOhwzhAiqYpMOo07O0qLLv0uvyzd7X/bIxQJ?=
 =?iso-8859-1?Q?xd7Y4X6JbBVacVres2FR1iL9gETja9SOSjdYUkcDeqUYvxLrmezI4NZpJt?=
 =?iso-8859-1?Q?1nJBqYxrTpIghjeUAX9q9rc0XYuWx0BTDT336YBnw7x22eJw8fvGHogwKu?=
 =?iso-8859-1?Q?CNpydpvQ4MrtzguC3k9EZGtLE8TZUHXwr3o3+aJamVNVyf8Y4S5jmyp9H3?=
 =?iso-8859-1?Q?IBQ7Kp27+1gGDsX19EPnyD+YaK0vw4BJHvdjkB0bWlFKfZbjT/MSz3f1YB?=
 =?iso-8859-1?Q?PcPQZsLiYs75TWJfS2brtSZ/Qe21eYOM1UQ7A9fE9XW1DD/cR3AZWuxmUV?=
 =?iso-8859-1?Q?LeUpxsKNPnN7ZDiy+VMpG6CFbIvc6eeR05PJJgmtRs/Csx1LLEiR4b+sS9?=
 =?iso-8859-1?Q?xkFsOEsVfp7wztZhaApAiZcKgYnTis30ukpIGCzE8l8QfLFT0XJF8ZNDdA?=
 =?iso-8859-1?Q?nIJwJZwW5zmmy0p7JSeXAA2kQBomnX4+pm/DdH1OPaYbZTaLVG2S+y5jpA?=
 =?iso-8859-1?Q?jIB3PG18QNi5jql0J0QOWhuE/MDXh5t1vjzbqXNIbhlWrueVJfpLRO95s6?=
 =?iso-8859-1?Q?R6y5cCtKUhleQqr1mSiRFqQhwTBY7YGy/htFAHxBZvynNkwcgwYhqIu4Wk?=
 =?iso-8859-1?Q?WAzV/ph1S7LnB/Rb0lWrmTYk1+7rbHg4gV/G2Lr7DWmSocYuNoVYtCxxjA?=
 =?iso-8859-1?Q?RA5AhcdhqSKE/++n54+HdAP1RZ07qC9DOiIvmVGiS6381ZOzuGtbUezmOS?=
 =?iso-8859-1?Q?UnFt2YrptKaUCEmyGIqRMC1lKV+ltKorcQJ3EkuHbdWkE1pKTkQAEC7CFj?=
 =?iso-8859-1?Q?baKbckqHPnY3TmovMD+F26juNL566MPYRGJe224NaPZdjo4A7p8gJ/0K71?=
 =?iso-8859-1?Q?yB7GwgLUDPSgWIdniRtkAGvExBwIfxzqXG8+X03Wy8OOIhYveFNA6ez36D?=
 =?iso-8859-1?Q?5tEOu+bd+KyoU6U821sBF2DhWVTEsJZUhDViucQR0kEXc7wYPH3ZbADyHT?=
 =?iso-8859-1?Q?txosFpvpZBO2IBlbGcoSyrnugLEkeZ93SrFU+WN/JmAIhzI6z/+LWjVmIw?=
 =?iso-8859-1?Q?UnVRyVLsnRECQdnKE2O7dr/LkDwcMmL9H3KGK0jcHdWCOoattkaugKtlTI?=
 =?iso-8859-1?Q?e7OYisj/atVDgj+7JVycT/gmx06o9uVmWmIE4QEeIpmCfCecVYFoEAZhPR?=
 =?iso-8859-1?Q?xX0lc1IyMY1a82fNxB8CCGeplKvMR3Z3/aRHUJ+bIzpB6wLA65ry64ukAN?=
 =?iso-8859-1?Q?oHkKl9ImNcZwYfjuKGIDKPD8pQG7nE8LYpGDjw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1P189MB2600.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ugSK+Yq73u+Hsq066Pt7bdW6WG9nK/v5qIBXIwNQlWu27WrZF5moEsXgSx?=
 =?iso-8859-1?Q?MiL7D2Z9/cIygeJrNkduOuDHYpmDQc3rHWycZVrNlXlMNoY20qpyGRnGhA?=
 =?iso-8859-1?Q?cAqnG/w6bZbc5XkUMC/x6IkAk3hLB/8C/Brmt3L+EYA71v6yUBmhqs2hRu?=
 =?iso-8859-1?Q?18TO6onSOcsU+GU/xSVY9Eso45IZgh8cs4tXfnTTe1b6UmsubksiAQOT3i?=
 =?iso-8859-1?Q?oX1+SkR9w3z6XlxwtaktdVT7vmOfd65vOK9mnY6/pv1X2QKeB7r1SS5OtD?=
 =?iso-8859-1?Q?KhYH2iLufbq8vZfDwXtjZLwRkPZD0wJ9llC+bsh4YSYFecfeYBk3Vhh5Pv?=
 =?iso-8859-1?Q?8MH2eRtFkSkTLb9y2cqdnXZ6ovh+52fJLRSbsjXPMuiJC3vzdxfyEOWVU1?=
 =?iso-8859-1?Q?7y7O4UdVZV1W4cl+d/QVcLDQiEl6tMLnhlISFaPWO7c+gcgJHc5Ir1Dt0v?=
 =?iso-8859-1?Q?AuDflgBSuwZpQSu3vvge1H+sZVJUlcfLZIctLsadW6SW7W/gAoIoCms2e0?=
 =?iso-8859-1?Q?XRxqWL1vwhpy/snEQulSwsLcX2zFDvNcph3KMhKYjVCoCC+Q9BXJ0tCpzf?=
 =?iso-8859-1?Q?w4lOSXdM4fFbLQugrtBVV/AEz5F9dCIFO2hAWGEIkSJ05DRyy7pDhM0da+?=
 =?iso-8859-1?Q?wul4eKiRL/5ILz8ePvcrc2xpLOYpWC+HXn1qIEfLnKwmQ8cx5VYqpbvg9c?=
 =?iso-8859-1?Q?Sm1eB/HjXO1fgHcNlpCQgJlVg7+X9p1W82rY7THXqZAHdFW3Tmr9T7BCXT?=
 =?iso-8859-1?Q?84FHLHtKclrq41pMF8eKso3KgKeEdN5k0b7ovOC6hvm2TjovmE0Vg6nIh5?=
 =?iso-8859-1?Q?mO4nsYi7h74IECnzG6lGJKXl1CwN4KKF670ntEjp12tvH3EikHiVl2dQbv?=
 =?iso-8859-1?Q?2bfg01kucvtwE9TyuzpTbT4ozaUPAtCfXJNhhkWwvxMf8VGwQyFeetYlti?=
 =?iso-8859-1?Q?WfvM1L7IgHwIQfXaMiirzSfpYZXZm7k36z+gxNpw0owaHo5m+6Q4SlccJ6?=
 =?iso-8859-1?Q?hlgphGqHcG6JFUIoJNNNZIuJ0Fp/eeMnLaY1pacGDDmNw1ct0NpQzUkXm5?=
 =?iso-8859-1?Q?9dDGGtM3lE3Z0RP2gobiIbKi1+M7hB8pmWKvxpWKtwXivoc0DQ+p1GT5Wc?=
 =?iso-8859-1?Q?FpUutaB2Ge9FdbbypiH8AQ+FXOAd+e7QinO8AxeXCiXj3M5rJ6JyoMs3if?=
 =?iso-8859-1?Q?NFHXBIAAgaMmEyXcZozhEhVJAixAE1/64n0RMkFKnp22rPrTv2ZoBQdUf2?=
 =?iso-8859-1?Q?LBa6ot53gJIWgb7/rJv+y1G0uORZ3lFFIe7z/CD9bwvwIZSGygCAYZmy98?=
 =?iso-8859-1?Q?QIBEH3ye/a3cen44JVjc8QQ11V2c9MOnBfhwp2ys+UE1np8ZdjAT4Akg9L?=
 =?iso-8859-1?Q?OO6OS38UXur+UB134TB1C6KgrYThJ9AL+u0H6r2U3pczILPDit4kP/KjaK?=
 =?iso-8859-1?Q?lSlNGm6xUblU/mbqUcILHRf0in5Hz4Z7mNslHWYwmoqR5EKLm2n9HUtDHf?=
 =?iso-8859-1?Q?Kh6jdRR9dw6gTGHnDEuk2xBDmuZatYZx5vVSlbqvO7iAxLZ3LIzkww4KtM?=
 =?iso-8859-1?Q?QeQmCKsTyVsA/OZvGtJz8Ur9b1SOaZsKj44CqL9wOPMPrgeOOqzP6FrJlJ?=
 =?iso-8859-1?Q?d2elOefzF0AswNmoAgdxhhhS3fPkUx9i9VjTynd8bz0+AQshmm7FD2BBJz?=
 =?iso-8859-1?Q?XpBCMR2F4rhiCeJkjakDXkCa6iEboetN9p/3qaEEW5vyOtX65U2zorCCuA?=
 =?iso-8859-1?Q?t+SQ=3D=3D?=
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e8021ac-e4b8-4a2a-ec83-08ddc0824a0e
X-MS-Exchange-CrossTenant-AuthSource: VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 13:53:17.8976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RvsDwAtjsvjYsYO76Mmx9B884S0G6h9y9JZVKhR23bZtls4D5Ox+vOE6xeGTowdBTyZYTJ45al9sjSBpoFyWfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P189MB1301
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=est.tech; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WPzT8wIGi6SWpor075k2NFFa1zcMX0+5PKjbNwr/NlA=;
 b=ZbAt3s1pSQtzGTEa6+ytiY66if2ZxKJBwRvMmmf8CKqGPTWIRV/7JhvhpUYIukuNMLZfBjMhA0JGjOlYhjAoB9OiunBxGuwQCn7X0XV11egwgaEsf8hTPBqs4432ubkAu0HD/Bu4gesLT+6X0gP+pf+qLSzk9YtqRtOw3RNzfONLz2w0Nu6z1j0iKGgjG672lefWmt6biVZlu0HNYvjP7SBw4+AhXaq/xC9qGQmHrezFD4iQMEugsbzuoZs++qXq1HWaMmG6NoYC1EO0aY20vRY3ilEPftfC5IyidrwkBI+8/e495drsmbObBk6uQLid47GySRMuU0PjhrZ8Cn50Ww==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=est.tech
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key,
 unprotected) header.d=est.tech header.i=@est.tech header.a=rsa-sha256
 header.s=selector1 header.b=ZbAt3s1p
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

On fre, 11 jul 2025, Malin Jonsson wrote:

> On fre, 11 jul 2025, Przemek Kitszel wrote:
> 
> > On 7/11/25 08:47, Malin Jonsson wrote:
> > > The idpf driver depends on both AUXILIARY_BUS and NET_DEVLINK, but
> > > they're not selected by the Kconfig. Let's fix this so idpf builds even
> > > with a stripped config.
> > > 
> > > Reported-by: Yong Gu <yong.g.gu@ericsson.com>
> > > Signed-off-by: Malin Jonsson <malin.jonsson@est.tech>
> > 
> > Thank you for the fix!
> 
> My pleasure!
> 
> > if you have a Link to the public report, please add it as a Closes: tag
> 
> There is no public report that I'm aware of.
> 
> > 
> > Would be also great to add a Fixes: tag with the commit that introduces
> > the need for given dependency/ies
> 
> I can do that.
> 
> > (there should be one tag only (per your commit), if both deps were
> > introduced by the very same pull request, just use the earlier commit)
> > 
> > > ---
> > >   drivers/net/ethernet/intel/idpf/Kconfig | 2 ++
> > >   1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
> > > index 1f893221e2c99..5c7ce626aae16 100644
> > > --- a/drivers/net/ethernet/intel/idpf/Kconfig
> > > +++ b/drivers/net/ethernet/intel/idpf/Kconfig
> > > @@ -8,6 +8,8 @@ config IDPF
> > >   	select LIBETH
> > >   	select LIBETH_CP
> > >   	select LIBETH_IRQ
> > > +	select AUXILIARY_BUS
> > > +	select NET_DEVLINK
> > 
> > looks good, but please notice that we keep this list sorted
> 
> Thanks! I will fix this and resubmit.
> > 
> > >   	help
> > >   	  This driver supports Intel(R) Infrastructure Data Path Function
> > >   	  devices.
> > 
> > 
> > 
Apologies Przemek,
 
I did not do my due diligence before I submitted this fix: I maintain a custom kernel for an Intel chip that's still under development (PMR), and we receive patches before submission to go with early releases of the PMR simulator.

The patches that introduce the dependencies are not on the list yet.

Thank you for your prompt and kind response, and your time!

Cheers //malin
~   
