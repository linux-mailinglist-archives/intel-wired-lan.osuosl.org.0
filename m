Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F994A3A9E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:42:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9B9587EB1;
	Fri, 30 Aug 2019 15:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SXOvoVgKPbHI; Fri, 30 Aug 2019 15:42:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39C2287E96;
	Fri, 30 Aug 2019 15:42:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CC631BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 48F7B87286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zzQCDry2-aOm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:42:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CFDE2871FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:42:10 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id o70so4890331pfg.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=nz/4S1faYNn5ga9nu2L9rgyJ6VH4Vo5eCb4dHh7ASd0=;
 b=feCZi9AysGNFNdmbrv3UlPoWlxPyrVVaIWXPbelUWUy+OLm90AQm03AiptBFbPco57
 raLwJ1wC6nmlhdFUa0wi5EkQ2OSBLB3kAuSzAXZ4VY+iyCUOSVZmk6zF81near5WToaM
 Mfe7qBO9qIUo39cnGOVh+IV2fJXet9VUEtPyBMxbk5YlkLA1TL0160j4VAdF5+L1WBWW
 QVD3DYK1qg4ZD7vY7CVgwkBDwyXvM0AqHq+/pbpP1nTxMcAjs1AKnx85BZ++0lqKowxE
 0wqf5erbSMHClxag/A7+9PWwYAfGWIXEJ3My+xNL8+471mlip0pgttp4R643Bi1Y16sI
 VB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=nz/4S1faYNn5ga9nu2L9rgyJ6VH4Vo5eCb4dHh7ASd0=;
 b=PbBhodWaY9KtUXmkxb2k9/FJUnuc2uU12zk77s3G8SdD7OjUchYYJyUO6X7FNXojCe
 3bPp4q2Hjan/6sAMlkV1hp+GG9QHoM3rHeAIjcXUa8JjkiWAUyh1Wk9jm0zqoLtN+0fc
 9JdDZcRlrRuffc3UdXA9UXp7IOncbsByz6COkFLfOLlQ3ikvMQobUTw+QoCJVdbiXfco
 r8WHh5wMq6u3fvhaarw48cLZtxv6g68Ag3uXnAzmPBTFNXCgCKYkHcz9A002162k4fbL
 VfeeiAx8PdMONdvkYkgEj0tEunONAWvpOq9tG3kdXXlflk5YfS3uJWjeDp/owsiwoi1j
 JCuQ==
X-Gm-Message-State: APjAAAVV7jauOxmMZ3tO1DSh1BhwBGTYKf7gh8nsQL1X4JbDiYtdPXWt
 PCdhbH4j1xiBgd3lXn5tJ5A=
X-Google-Smtp-Source: APXvYqwrMFL8ZtVqMHspZc6WTRMYl7zk0ebMROhOMmI7eKfMdRPNn6Lb3rQGyzLuzKgmk+uSyAakxw==
X-Received: by 2002:a65:644b:: with SMTP id s11mr3197425pgv.305.1567179730421; 
 Fri, 30 Aug 2019 08:42:10 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id z63sm6368612pfb.163.2019.08.30.08.42.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:42:09 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:42:08 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <34527E59-0A29-4904-B794-9592C5E818C1@gmail.com>
In-Reply-To: <20190827022531.15060-5-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-5-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 04/12] i40e: modify driver
 for handling offsets
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 26 Aug 2019, at 19:25, Kevin Laatz wrote:

> With the addition of the unaligned chunks option, we need to make sure we
> handle the offsets accordingly based on the mode we are currently running
> in. This patch modifies the driver to appropriately mask the address for
> each case.
>
> Signed-off-by: Bruce Richardson <bruce.richardson@intel.com>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
