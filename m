Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKFIIQ0q1Wli1wcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 18:00:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8C53B1709
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 18:00:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFB3040699;
	Tue,  7 Apr 2026 16:00:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w0Z8NnPLlJbY; Tue,  7 Apr 2026 16:00:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59EA6405CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775577610;
	bh=CQAH5zJ2CIcYEwDkdxNu8DXoykgeIWOSxtKdo6LbwSw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=faPO1ApWFd1f0akZVsduQ9fYeua5sbPPnJKN/nH+V4QheVViPypYtqYdmSyWqlYS9
	 0APNfhyWxmQTNhM/ACUUTHpobL4FqOet/2GyVGNq2AQqotCUb81tPYApsLnAnpPjOc
	 DXO/EgobtGuVy/YkNCzl+bX6USdyXSnjseKfG3w4ezqZEWb023+waNmnVejzZeK7IK
	 zpPR03Dwbh96l0PJGB3vj4kwUEBYanEUWwoeVJngZVlROH0lQo+s9Nyd9gZGgVOMC0
	 fWkrCFELW8Fn3UsaTetMMQnuQ1PM7Tki55FQjXRdPotQTWVz9B9JhrLVkrr9DzG6r/
	 neDC++wkdQp+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59EA6405CD;
	Tue,  7 Apr 2026 16:00:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4013E1F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 16:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3099C6064D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 16:00:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OCUc7nvxW1Xi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2026 16:00:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::122f; helo=mail-dl1-x122f.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 86B716077A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86B716077A
Received: from mail-dl1-x122f.google.com (mail-dl1-x122f.google.com
 [IPv6:2607:f8b0:4864:20::122f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 86B716077A
 for <intel-wired-lan@osuosl.org>; Tue,  7 Apr 2026 16:00:07 +0000 (UTC)
Received: by mail-dl1-x122f.google.com with SMTP id
 a92af1059eb24-12732e6a123so1003622c88.1
 for <intel-wired-lan@osuosl.org>; Tue, 07 Apr 2026 09:00:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775577606; x=1776182406;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CQAH5zJ2CIcYEwDkdxNu8DXoykgeIWOSxtKdo6LbwSw=;
 b=Al+0boi+lZjpnkUpFKdQQL8gCQScH2mNzToXU+osTeIoSGF98Vc8f6ZmGTE5PY15wC
 ZW33hJdFtPFC/ZtL7fpyFzQgRjF8LSM3VeLu+eiPerPFe/R63hP7fLRfDSOdnLaSpPfD
 3r/39jxlw5jH4Fn4lAHl1TFS6M8TyhuVn3isxPdzuswPT4pd2XVrG4F9clPO0UaAlHFx
 YWXWf3dAFOsC2EZrGiPDFrsRLdvdpqVzcujB0tXwsQbbsnw8XCSFTMD9Qx0hOM8GVJ65
 M9kZmPdNxAUXFAlCrCmQqjxGDcHirdWsfge0kts02sVo1yaTRW3nSzyqxBJcA68Awb3I
 CGCQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXmaDO7GhteSfcoQjN5JeylRc/40YG3OdYxjRNMJuLXX5R+pRZZNVP251S0UivIunOhF2EmbGXKuiKrPMCFPH4=@osuosl.org
X-Gm-Message-State: AOJu0Yx7lY25cbZQqxkl7xzlC1SLlHkHR6E92cXvtCbVhXXPMetz9+Qp
 NbvUCvsZt4pczqYVHrnGxyZMYpuyUPcPZYrjDjE3HnVIrmOzH/xpTOrnWdRHiRc4
X-Gm-Gg: AeBDietSVShO1TyO2oXghuJC33A8qe49SUo+2vz7uN+htNeru0a0ijZfBumiEaRlxdn
 q6LAlYJYEObf+/XciXh/6ZJtqLW822dJuQ7Ic5tw8ElzC6A2aVfDqx55rIDDXqhyJlWtbhENOI/
 45kQhM1sS50Nh8dgOF4eYZJAPiIuxm8yZpbFSCcIT9D98Q2QeY+uj8pBLgLtk9Yw4LOf/ffoNQs
 FG/RKIymRbo7Yw+m2UEw3QouzQQasfqlhN6Yh/lj3to6cBPhDdRLfngPvZy9KC44e5o1YhUGm4V
 Poa+IG5IFh5qm3szOTTNtBlSEKXkVDhg2psWHaWZ+Ree51cgv+AdKMcObQotJaQ9kZvisrPLtg7
 Y177MLWBu5i9ID1VGxeiqyNfX+SMcRE+9Z3M5Pyvb5Sxp6mw3AWAlgfROVQ+cZlGqAsr7oz5sLP
 t9R9jlmamwbPf25m4FZnDzRHcR
X-Received: by 2002:a05:7300:dc8b:b0:2c6:31f0:a018 with SMTP id
 5a478bee46e88-2cbfb98f39amr8648259eec.22.1775577606272; 
 Tue, 07 Apr 2026 09:00:06 -0700 (PDT)
Received: from ?IPV6:2600:6c5c:6b00:62b::23? ([2600:6c5c:6b00:62b::23])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2d16d115c00sm3800813eec.12.2026.04.07.09.00.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2026 09:00:05 -0700 (PDT)
Message-ID: <1c605b20-4f83-4c61-9a90-78f4241350ac@gmail.com>
Date: Tue, 7 Apr 2026 12:00:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 intel-wired-lan@osuosl.org
References: <20260406005830.2250373-2-tactii@gmail.com>
 <eb1f3edf-5a61-4b29-a51f-17a5f9c35d2e@linux.intel.com>
Content-Language: en-US
From: Matt Vollrath <tactii@gmail.com>
In-Reply-To: <eb1f3edf-5a61-4b29-a51f-17a5f9c35d2e@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775577606; x=1776182406; darn=osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=CQAH5zJ2CIcYEwDkdxNu8DXoykgeIWOSxtKdo6LbwSw=;
 b=rkIL0Uj1QIKhEGbI68HbbCUWZbmmDW56ZeR+nX74oc4jtY34+YVucV81gcR1QvMZuL
 k/H7mcJcIBk4Yxcj8INHchcSXyKbAde+DvK44FySq+ibQ1B80VrODPIZ9bWQuCi7pFyn
 nXHdIwGk3ZxL/Mh4Zyyajt6YZVJBV0wsi6RQNLlIOF0WrG0aMWqZxxj6avoiZb7/XQIE
 96257bDdBSi7LtGwWs0QaPIAyT2bC/wf+iEhz3U807eOKqv9nlDioNzfUBhWjOHvXLKx
 4Kto69uart412aq7pGzRAAUT90BlIHVnWrwR7ixaSNY/ZyrZvRz2V3M0+EWaVOdHA2xD
 VwTw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=rkIL0Uj1
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Cleanup PTP registration
 on probe failure
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_RECIPIENTS(0.00)[m:dawid.osuchowski@linux.intel.com,m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7F8C53B1709
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/7/26 05:42, Dawid Osuchowski wrote:
> In the future when sending to Intel-wired-lan (IWL) you should use either the iwl-net or iwl-next as the target tree, example based on this patch:
>      [PATCH iwl-net v2] i40e: Cleanup PTP registration on probe failure
> 
> iwl-net is for fixes (such as this patch), iwl-next for new features / refactors that don't need to be backported to stable kernels.
> 
> Given this is a fix you could also add in the commit msg:
>      Cc: stable@vger.kernel.org
> 
> that way it will be automatically picked up for backporting to currently maintained stable kernel versions by the -stable maintainers [1].
> 
> For future submissions, if you send a v2/v3/vX... you should put a changelog here of what has changed w.r.t. the previous revision. An example in this case:
> 
> v2:
> * add Fixes tag
> * change name of patch:
>      i40e: Cleanup PTP upon probe failure -> i40e: Cleanup PTP registration on probe failure
> 
> The important bit is to do include the changelog below the '---', that way it will be disregarded by e.g. 'git am' and won't pollute the commit msg. Changelog is for reviewers only to quickly assess what to look for / what has changed :)

Thanks Dawid, I'll do that.
mv

