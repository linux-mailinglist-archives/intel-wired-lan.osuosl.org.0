Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EFB995BDE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 01:49:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26B4A405E8;
	Tue,  8 Oct 2024 23:49:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nQ4Eyu0JyCFq; Tue,  8 Oct 2024 23:49:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B11D405F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728431345;
	bh=IdOHI3uWeWuUZC4ucMAg196VjTy+VQ19oGcexjTEe0g=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nIGCzlm2ulwjrFjA93YWhQnPHJ5A5uuMNv3cEav7wIPH/pJQ4LqQvNuwLM8sVIBN7
	 V+6UWfHH2DwSU4Rar7ZU0NqJmR0Lx00Q8UMvzP/9TnNetIxxgKWZwoS34YNUkVVp7I
	 cgKIz7uDOA2Tqh6VvGyEeafc+2z/lyC5r/S7CU5Y7FO/MLb1o6EGlT8FQ4p0ksL4jZ
	 83tyje8HYfi4ApWWp76lYzHZhsSqEDk+fTnj31+2cO2xctrBF4ltUqN5t4nhk695Id
	 Hz1DVvBWKHV+HDTV7AlxbJelcAgwAPjl913E2Q803V5vIvEHnaCwtZDwj1Q4KTFLYG
	 hy7ilx3ThtO+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B11D405F0;
	Tue,  8 Oct 2024 23:49:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41F061BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 23:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3DCBC81167
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 23:49:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lpaSzGDNdwIN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2024 23:49:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 569BC81165
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 569BC81165
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 569BC81165
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 23:49:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E5B8A5C584A;
 Tue,  8 Oct 2024 23:48:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E1C9C4CEC7;
 Tue,  8 Oct 2024 23:49:00 +0000 (UTC)
Date: Tue, 8 Oct 2024 16:48:59 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20241008164859.23553374@kernel.org>
In-Reply-To: <7523bf4d6f19429efd32192dd5b90f7bb0b0b20d.1727704215.git.pabeni@redhat.com>
References: <cover.1727704215.git.pabeni@redhat.com>
 <7523bf4d6f19429efd32192dd5b90f7bb0b0b20d.1727704215.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728431340;
 bh=Vj0fdw62X4AqPYIwnPvSBlAk1899znmC4XfRPqTGVIU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gkqn4DtDWLXlBwl8lZQe/Ln9sxmzB0t0t9k+q1jgLZuZ8/Yf9ksWqjcAa+4YNhdXm
 tk5eadKn7gvUbyUTjhWX4YjrI8737jHVfBFUBiSKdSFzlcKPIPMLt84ZvynXQbs/Fv
 F8B53R/QLIWjUxmPwGi3EvTWMjQODt6FAfCBdzJ1R3vAJXa3JadHyjVDh0pbzK5cZN
 1eWUDgjZldbFjnFMjdjSvg0KAR3GCSyGiRqnK+GwV+SjJf06zL1frA6tY6eOVKyE3f
 EZAQihIYplnbWmTyMSKlcAR5LNb5F+cBJ7XPR4zEfakNGFvXfwAyvqJXbdY2hATUAM
 zNpIWzZnIW0tA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gkqn4DtD
Subject: Re: [Intel-wired-lan] [PATCH v8 net-next 09/15] net: shaper:
 implement introspection support
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 30 Sep 2024 15:53:56 +0200 Paolo Abeni wrote:
> The netlink op is a simple wrapper around the device callback.
> 
> Extend the existing fetch_dev() helper adding an attribute argument
> for the requested device. Reuse such helper in the newly implemented
> operation.

Reviewed-by: Jakub Kicinski <kuba@kernel.org>
